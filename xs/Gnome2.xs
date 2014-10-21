/*
 * Copyright (C) 2003 by the gtk2-perl team (see the file AUTHORS)
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/Gnome2.xs,v 1.15 2004/03/29 18:04:58 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2		PACKAGE = Gnome2

=for object Gnome2::main

=cut

BOOT:
	{
#include "register.xsh"
#include "boot.xsh"
	/* route Gnome's log domains through perl's warn() and croak() */
	gperl_handle_logs_for ("Gnome");
	gperl_handle_logs_for ("GnomeUI");
	gperl_handle_logs_for ("Bonobo");
	gperl_handle_logs_for ("BonoboUI");
	}

void
GET_VERSION_INFO (class)
    PPCODE:
	EXTEND (SP, 3);
	PUSHs (sv_2mortal (newSViv (LIBGNOMEUI_MAJOR_VERSION)));
	PUSHs (sv_2mortal (newSViv (LIBGNOMEUI_MINOR_VERSION)));
	PUSHs (sv_2mortal (newSViv (LIBGNOMEUI_MICRO_VERSION)));
	PERL_UNUSED_VAR (ax);

bool
CHECK_VERSION (class, major, minor, micro)
	int major
	int minor
	int micro
    CODE:
	RETVAL = LIBGNOMEUI_CHECK_VERSION (major, minor, micro);
    OUTPUT:
	RETVAL

MODULE = Gnome2		PACKAGE = Gnome2::Bonobo

void
GET_VERSION_INFO (class)
    PPCODE:
	EXTEND (SP, 3);
	PUSHs (sv_2mortal (newSViv (LIBBONOBOUI_MAJOR_VERSION)));
	PUSHs (sv_2mortal (newSViv (LIBBONOBOUI_MINOR_VERSION)));
	PUSHs (sv_2mortal (newSViv (LIBBONOBOUI_MICRO_VERSION)));
	PERL_UNUSED_VAR (ax);

bool
CHECK_VERSION (class, major, minor, micro)
	int major
	int minor
	int micro
    CODE:
	RETVAL = LIBBONOBOUI_CHECK_VERSION (major, minor, micro);
    OUTPUT:
	RETVAL

MODULE = Gnome2		PACKAGE = Gnome2::AuthenticationManager	PREFIX = gnome_authentication_manager_

#if LIBGNOMEUI_CHECK_VERSION (2, 4, 0)

## void gnome_authentication_manager_init (void)
void
gnome_authentication_manager_init (class)
   C_ARGS:
	/* void */

#endif
