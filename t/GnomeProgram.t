#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 9;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeProgram.t,v 1.7 2004/02/12 18:21:14 kaffeetisch Exp $

###############################################################################

SKIP: {
  skip("You don't appear to have the GNOME session manager running.", TESTS)
    unless (-d "$ENV{ HOME }/.gconfd" &&
            -d "$ENV{ HOME }/.gnome2");

  skip("Couldn't initialize Gtk2", TESTS)
    unless (Gtk2 -> init_check());

  skip("Couldn't connect to the session manager.", TESTS)
    unless (Gnome2::Client -> new() -> connected());

  #############################################################################

  Gnome2::Program -> module_register("libgnome");
  ok(Gnome2::Program -> module_registered("libgnome"));

  # FIXME
  # isa_ok(Gnome2::Program -> module_load("/usr/lib/libgnome-2.so"),
  #        "Gnome2::ModuleInfo");

  @ARGV = qw(--name bla --class blub --urgs);

  my $application = Gnome2::Program -> init("Test",
                                            "0.1",
                                            "libgnomeui",
                                            app_prefix => "/gtk2perl",
                                            app_sysconfdir => "/gtk2perl/etc");

  is_deeply([$application -> get(qw(app_prefix app_sysconfdir))], [qw(/gtk2perl /gtk2perl/etc)]);
  is_deeply(\@ARGV, [qw(--name bla --class blub --urgs)]);

  isa_ok($application, "Gnome2::Program");
  is($application -> get_program(), $application);

  is($application -> get_human_readable_name(), "Test");
  is($application -> get_app_id(), "Test");
  is($application -> get_app_version(), "0.1");

  ok(-e $application -> locate_file("libdir", "libgnome-2.so", 1));
}
