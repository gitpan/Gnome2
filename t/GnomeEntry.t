#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 3;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeEntry.t,v 1.7 2003/12/15 00:17:24 kaffeetisch Exp $

###############################################################################

SKIP: {
  our $application;
  do "t/TestBoilerplate";

  #############################################################################

  my $entry = Gnome2::Entry -> new();
  isa_ok($entry, "Gnome2::Entry");

  isa_ok($entry -> gtk_entry, "Gtk2::Entry");

  # this would make gconf create an entry in its db.
  # $entry -> set_history_id("urgs");
  # is($entry -> get_history_id(), "urgs");

  SKIP: {
    skip("set_max_saved is new in 2.3.3", 1)
      unless (Gnome2 -> check_version(2, 3, 3));

    $entry -> set_max_saved(23);
    is($entry -> get_max_saved(), 23);
  }

  $entry -> prepend_history(1, "blub");
  $entry -> append_history(0, "blab");
  $entry -> clear_history();
}
