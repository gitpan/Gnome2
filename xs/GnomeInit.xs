/*
 * Copyright (c) 2003 by the gtk2-perl team (see the file AUTHORS)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the 
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330, 
 * Boston, MA  02111-1307  USA.
 *
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeInit.xs,v 1.4 2003/09/21 01:31:26 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::Init	PACKAGE = Gnome2	PREFIX = gnome_

const char *
dirs (class)
	SV * class
    ALIAS:
	Gnome2::user_dir_get = 1
	Gnome2::user_private_dir_get = 2
	Gnome2::user_accels_dir_get = 3
    CODE:
	switch (ix) {
		case 1: RETVAL = gnome_user_dir_get (); break;
		case 2: RETVAL = gnome_user_private_dir_get (); break;
		case 3: RETVAL = gnome_user_accels_dir_get (); break;
	}
    OUTPUT:
	RETVAL

