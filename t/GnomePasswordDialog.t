#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 5;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomePasswordDialog.t,v 1.6 2004/03/29 18:04:58 kaffeetisch Exp $

###############################################################################

SKIP: {
  do "t/TestBoilerplate";

  skip("GnomePasswordDialog and GnomeAuthenticationManager didn't appear until 2.4.0", TESTS)
    unless (Gnome2 -> CHECK_VERSION(2, 4, 0));

  Gnome2::AuthenticationManager -> init();

  my $dialog = Gnome2::PasswordDialog -> new("Bla", "Bla!", "bla", "alb", 1);
  isa_ok($dialog, "Gnome2::PasswordDialog");

  $dialog -> set_username("urgs");
  is($dialog -> get_username(), "urgs");

  $dialog -> set_password("urgs");
  is($dialog -> get_password(), "urgs");

  $dialog -> set_readonly_username(1);

  SKIP: {
    skip("things new in 2.6.0", 2)
      unless (Gnome2 -> CHECK_VERSION(2, 6, 0));

    $dialog -> set_show_username(1);
    $dialog -> set_show_domain(1);
    $dialog -> set_show_password(1);
    $dialog -> set_show_remember(1);
    $dialog -> set_readonly_domain(1);

    $dialog -> set_remember("nothing");
    is($dialog -> get_remember(), "nothing");

    $dialog -> set_domain("urgs");
    is($dialog -> get_domain(), "urgs");
  }

  # $dialog -> run_and_block();
}
