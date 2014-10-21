#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 4;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeIconSelection.t,v 1.3 2003/09/26 14:33:17 kaffeetisch Exp $

###############################################################################

SKIP: {
  skip("You don't appear to have the GNOME session manager running.", TESTS)
    unless (-d "$ENV{ HOME }/.gconfd" &&
            -d "$ENV{ HOME }/.gnome2");

  my $application = Gnome2::Program -> init("Test", "0.1");

  skip("Couldn't connect to the session manager.", TESTS)
    unless (Gnome2::Client -> new() -> connected());

  #############################################################################

  my $selection = Gnome2::IconSelection -> new();
  isa_ok($selection, "Gnome2::IconSelection");
  isa_ok($selection -> get_gil(), "Gnome2::IconList");
  isa_ok($selection -> get_box(), "Gtk2::VBox");

  $selection -> clear(1);

  $selection -> add_defaults();
  $selection -> add_directory("/usr/share/icons");

  $selection -> stop_loading();
  $selection -> show_icons();

  $selection -> select_icon("yes.xpm");
  is($selection -> get_icon(1), "/usr/share/pixmaps/yes.xpm");
}
