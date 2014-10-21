#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 7;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeColorPicker.t,v 1.3 2003/09/26 14:33:17 kaffeetisch Exp $

###############################################################################

SKIP: {
  skip("You don't appear to have the GNOME session manager running.", TESTS)
    unless (-d "$ENV{ HOME }/.gconfd" &&
            -d "$ENV{ HOME }/.gnome2");

  my $application = Gnome2::Program -> init("Test", "0.1");

  skip("Couldn't connect to the session manager.", TESTS)
    unless (Gnome2::Client -> new() -> connected());

  #############################################################################

  my $picker = Gnome2::ColorPicker -> new();
  isa_ok($picker, "Gnome2::ColorPicker");

  $picker -> set_d(0.5, 0.5, 0.5, 0.5);
  is_deeply([$picker -> get_d()], [0.5, 0.5, 0.5, 0.5]);

  $picker -> set_i8(23, 23, 42, 42);
  is_deeply([$picker -> get_i8()], [23, 23, 42, 42]);

  $picker -> set_i16(23, 23, 42, 42);
  is_deeply([$picker -> get_i16()], [23, 23, 42, 42]);

  $picker -> set_dither(1);
  is($picker -> get_dither(), 1);

  $picker -> set_use_alpha(1);
  is($picker -> get_use_alpha(), 1);

  $picker -> set_title("May The Force Be With You!");
  is($picker -> get_title(), "May The Force Be With You!");
}
