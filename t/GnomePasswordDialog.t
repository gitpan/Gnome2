#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 3;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomePasswordDialog.t,v 1.3 2003/12/15 00:17:24 kaffeetisch Exp $

###############################################################################

SKIP: {
  do "t/TestBoilerplate";

  Gnome2::AuthenticationManager -> init();

  my $dialog = Gnome2::PasswordDialog -> new("Bla", "Bla!", "bla", "alb", 1);
  isa_ok($dialog, "Gnome2::PasswordDialog");

  $dialog -> set_username("urgs");
  $dialog -> set_password("urgs");
  $dialog -> set_readonly_username(0);
  # $dialog -> set_remember(0);
  # $dialog -> set_remember_label_text(0);

  is($dialog -> get_username(), "urgs");
  is($dialog -> get_password(), "urgs");
  # is($dialog -> get_remember(), 0);

  # $dialog -> run_and_block();
}
