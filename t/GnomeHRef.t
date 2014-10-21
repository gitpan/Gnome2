#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 3;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeHRef.t,v 1.4 2003/12/15 00:17:24 kaffeetisch Exp $

###############################################################################

SKIP: {
  our $application;
  do "t/TestBoilerplate";

  #############################################################################

  my $link = Gnome2::HRef -> new("ftp://ftp.freenet.de/pub/", "Freenet");
  isa_ok($link, "Gnome2::HRef");

  $link -> set_url("bla://blub");
  is($link -> get_url(), "bla://blub");

  $link -> set_text("Hmm");
  is($link -> get_text(), "Hmm");
}
