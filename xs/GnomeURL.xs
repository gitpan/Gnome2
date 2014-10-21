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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeURL.xs,v 1.3 2003/11/07 18:46:15 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::URL	PACKAGE = Gnome2::URL	PREFIX = gnome_url_

##  gboolean gnome_url_show (const char *url, GError **error) 
gboolean
gnome_url_show (class, url)
	const char *url
    PREINIT:
	GError *error = NULL;
    CODE:
	RETVAL = gnome_url_show (url, &error);
	if (!RETVAL)
		gperl_croak_gerror("Gnome2::URL->show", error);
    OUTPUT:
	RETVAL

###  gboolean gnome_url_show_with_env (const char *url, char **envp, GError **error) 
#gboolean
#gnome_url_show_with_env (url, envp, error)
#	const char *url
#	char **envp
#	GError **error

