#!/usr/bin/perl -w
use strict;
use Gnome2;

use constant TESTS => 2;
use Test::More tests => TESTS;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/t/GnomeI18N.t,v 1.3 2003/09/26 14:33:17 kaffeetisch Exp $

###############################################################################

ok(Gnome2::I18N -> get_language_list());
ok(Gnome2::I18N -> get_language_list("LC_MESSAGES"));

Gnome2::I18N -> push_c_numeric_locale();
Gnome2::I18N -> pop_c_numeric_locale();
