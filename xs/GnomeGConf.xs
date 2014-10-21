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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeGConf.xs,v 1.4 2003/07/05 07:09:06 pcg Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::GConf	PACKAGE = Gnome2::GConf	PREFIX = gnome_gconf_

##  gchar *gnome_gconf_get_gnome_libs_settings_relative (const gchar *subkey) 
gchar_own *
gnome_gconf_get_gnome_libs_settings_relative (class, subkey)
	SV * class
	const gchar *subkey
    C_ARGS:
	subkey

##  gchar *gnome_gconf_get_app_settings_relative (GnomeProgram *program, const gchar *subkey) 
gchar_own *
gnome_gconf_get_app_settings_relative (class, program, subkey)
	SV * class
	GnomeProgram *program
	const gchar *subkey
    C_ARGS:
	program, subkey

