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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeAppBar.xs,v 1.4 2003/07/05 07:09:06 pcg Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::AppBar	PACKAGE = Gnome2::AppBar	PREFIX = gnome_appbar_

## GtkWidget* gnome_appbar_new (gboolean has_progress, gboolean has_status, GnomePreferencesType interactivity) 
GtkWidget*
gnome_appbar_new (class, has_progress, has_status, interactivity)
	SV * class
	gboolean has_progress
	gboolean has_status
	GnomePreferencesType interactivity
    C_ARGS:
	has_progress, has_status, interactivity

## void gnome_appbar_set_status (GnomeAppBar * appbar, const gchar * status) 
void
gnome_appbar_set_status (appbar, status)
	GnomeAppBar * appbar
	const gchar * status

## GtkWidget* gnome_appbar_get_status (GnomeAppBar * appbar) 
GtkWidget*
gnome_appbar_get_status (appbar)
	GnomeAppBar * appbar

## void gnome_appbar_set_default (GnomeAppBar * appbar, const gchar * default_status) 
void
gnome_appbar_set_default (appbar, default_status)
	GnomeAppBar * appbar
	const gchar * default_status

## void gnome_appbar_push (GnomeAppBar * appbar, const gchar * status) 
void
gnome_appbar_push (appbar, status)
	GnomeAppBar * appbar
	const gchar * status

## void gnome_appbar_pop (GnomeAppBar * appbar) 
void
gnome_appbar_pop (appbar)
	GnomeAppBar * appbar

## void gnome_appbar_clear_stack (GnomeAppBar * appbar) 
void
gnome_appbar_clear_stack (appbar)
	GnomeAppBar * appbar

## void gnome_appbar_set_progress_percentage (GnomeAppBar *appbar, gfloat percentage) 
void
gnome_appbar_set_progress_percentage (appbar, percentage)
	GnomeAppBar *appbar
	gfloat percentage

## GtkProgressBar* gnome_appbar_get_progress (GnomeAppBar * appbar) 
GtkProgressBar*
gnome_appbar_get_progress (appbar)
	GnomeAppBar * appbar

## void gnome_appbar_refresh (GnomeAppBar * appbar) 
void
gnome_appbar_refresh (appbar)
	GnomeAppBar * appbar

## void gnome_appbar_set_prompt (GnomeAppBar * appbar, const gchar * prompt, gboolean modal) 
void
gnome_appbar_set_prompt (appbar, prompt, modal)
	GnomeAppBar * appbar
	const gchar * prompt
	gboolean modal

## void gnome_appbar_clear_prompt (GnomeAppBar * appbar) 
void
gnome_appbar_clear_prompt (appbar)
	GnomeAppBar * appbar

## gchar * gnome_appbar_get_response (GnomeAppBar * appbar) 
gchar_own *
gnome_appbar_get_response (appbar)
	GnomeAppBar * appbar

