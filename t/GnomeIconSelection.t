#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 3;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeIconSelection.t,v 1.6 2004/02/10 17:59:53 kaffeetisch Exp $

###############################################################################

SKIP: {
  our $application;
  do "t/TestBoilerplate";

  #############################################################################

  my $selection = Gnome2::IconSelection -> new();
  isa_ok($selection, "Gnome2::IconSelection");
  isa_ok($selection -> get_gil(), "Gnome2::IconList");
  isa_ok($selection -> get_box(), "Gtk2::VBox");

  $selection -> clear(1);

  $selection -> add_defaults();
  $selection -> add_directory("/usr/share/pixmaps");

  $selection -> stop_loading();
  $selection -> show_icons();

  $selection -> select_icon("yes.xpm");
  $selection -> get_icon(1); # FIXME: the return value should be checked.
}
