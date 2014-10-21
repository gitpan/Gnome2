#read !grep _TYPE_ /usr/include/gtk-2.0/gtk/*.h | grep get_type  
#% s/^.*[ \t]\([_A-Z0-9]*_TYPE_[_A-Z0-9]*\)[ \t].*$/\1/ 
#
# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/genmaps.pl,v 1.4 2003/09/21 01:21:23 kaffeetisch Exp $
#


=out

libgnome-2.0
libgnomeui-2.0
libgnomecanvas-2.0
libgnomeprint-2.0
libgnomeprintui-2.0
libbonobo-2.0
libbonoboui-2.0
libnautilus
libpanelapplet-2.0
esound
ORBit-2.0
gnome-mime-data-2.0
gnome-vfs-2.0
gconf-2.0
gconfgtk-2.0

=cut

@dirs = (
	'/usr/include/libgnome-2.0/libgnome/',
	'/usr/include/libgnomeui-2.0/libgnomeui/',
	'/usr/include/libgnomecanvas-2.0/libgnomecanvas/',
	'/usr/include/libbonobo-2.0/bonobo/',
	'/usr/include/libbonoboui-2.0/bonobo/'
);

foreach $dir (@dirs) {
	@lines = `grep _TYPE_ $dir/*.h | grep get_type`;
	foreach (@lines) {
		chomp;
		s/^.*\s([A-Z][A-Z0-9_]*_TYPE_[A-Z0-9_]*)\s.*$/$1/;
#		print "$1\n";
		push @types, $_;
	}
}



open FOO, "> foo.c";
select FOO;

print '#include <stdio.h>
#include <gnome.h>
#include <libgnomecanvas/libgnomecanvas.h>
#include <libgnome/libgnometypebuiltins.h>
#include <bonobo/bonobo-ui-type-builtins.h>

const char * find_base (GType gtype)
{
	if (g_type_is_a (gtype, GTK_TYPE_OBJECT))
		return "GtkObject";
	if (g_type_is_a (gtype, G_TYPE_OBJECT))
		return "GObject";
	if (g_type_is_a (gtype, G_TYPE_BOXED))
		return "GBoxed";
	if (g_type_is_a (gtype, G_TYPE_FLAGS))
		return "GFlags";
	if (g_type_is_a (gtype, G_TYPE_ENUM))
		return "GEnum";
	if (g_type_is_a (gtype, G_TYPE_INTERFACE))
		return "GInterface";
	if (g_type_is_a (gtype, G_TYPE_STRING))
		return "GString";
	{
	GType parent = gtype;
	while (parent != 0) {
		gtype = parent;
		parent = g_type_parent (gtype);
	}
	return g_type_name (gtype);
	}
	return "-";
}

int main (int argc, char * argv [])
{
	g_type_init ();
';

foreach (@types) {
	print '#ifdef '.$_.'
{
        GType gtype = '.$_.';
        printf ("%s\t%s\t%s\n",
                "'.$_.'", 
		g_type_name (gtype),
		find_base (gtype));
}
#endif /* '.$_.' */
';
}

print '
	return 0;
}
';

close FOO;
select STDOUT;

system 'gcc -DGTK_DISABLE_DEPRECATED -Wall -o foo foo.c `pkg-config libgnomeui-2.0 libgnomecanvas-2.0 --cflags --libs`'
	and die "couldn't compile helper program";

# these are matched in order; for example, GnomePrinter must test before
# GnomePrint to avoid matching the wrong thing.
@packagemap = (
#	[ Art          => 'Gnome2::Art' ], # no gobject hooks
	[ GnomeCanvas  => 'Gnome2::Canvas' ],
	[ Gnome        => 'Gnome2' ], # fallback
);

foreach (`./foo`) {
	chomp;
	my @p = split;
	my $pkg = 'Gnome2';
	my $prefix = 'Gnome';
	foreach $f (@packagemap) {
		my $t = $f->[0];
		if ($p[1] =~ /^$t/) {
			$prefix = $f->[0];
			$pkg = $f->[1];
			last;
		}
	}
	(my $fullname = $p[1]) =~ s/^$prefix/$pkg\::/;
	$fullname =~ s/\::$//;
	print join("\t", @p, $fullname), "\n";
}

