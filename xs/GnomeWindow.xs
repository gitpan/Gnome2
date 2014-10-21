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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeWindow.xs,v 1.1 2003/09/21 01:18:12 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::Window	PACKAGE = Gtk2::Window	PREFIX = gnome_window_

##  void gnome_window_toplevel_set_title (GtkWindow *window, const gchar *doc_name, const gchar *app_name, const gchar *extension) 
void
gnome_window_toplevel_set_title (window, doc_name, app_name, extension)
	GtkWindow *window
	const gchar *doc_name
	const gchar *app_name
	const gchar *extension
    C_ARGS:
	window, doc_name, app_name, extension

