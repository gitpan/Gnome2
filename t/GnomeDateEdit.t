#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 5;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeDateEdit.t,v 1.6 2005/03/06 14:54:24 kaffeetisch Exp $

###############################################################################

SKIP: {
  our $application;
  do "t/TestBoilerplate";

  #############################################################################

  my $edit = Gnome2::DateEdit -> new(time(), 1, 1);
  isa_ok($edit, "Gnome2::DateEdit");

  $edit = Gnome2::DateEdit -> new_flags(0, [qw(show_time
                                               24_hr
                                               week_starts_on_monday)]);
  isa_ok($edit, "Gnome2::DateEdit");

  $edit -> set_time(time());
  like($edit -> get_time(), qr/^\d+$/);
  like($edit -> get_initial_time(), qr/^\d+$/);

  $edit -> set_popup_range(6, 12);

  $edit -> set_flags([qw(show_time 24_hr)]);
  TODO: {
    local $TODO = "Test::More seems to be broken";
    is_deeply($edit -> get_flags(), [qw(show-time 24-hr)]);
  }
}
