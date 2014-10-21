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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeFileEntry.xs,v 1.3 2003/05/22 16:10:20 muppetman Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::FileEntry	PACKAGE = Gnome2::FileEntry	PREFIX = gnome_file_entry_

GtkWidget *
gnome_file_entry_new (class, history_id, browse_dialog_title)
	SV * class
	const char *history_id
	const char *browse_dialog_title
    C_ARGS:
	history_id, browse_dialog_title

GtkWidget * gnome_file_entry_gnome_entry (GnomeFileEntry *fentry);

GtkWidget * gnome_file_entry_gtk_entry (GnomeFileEntry *fentry);

void
gnome_file_entry_set_title (fentry, browse_dialog_title)
	GnomeFileEntry *fentry
	const char *browse_dialog_title

void
gnome_file_entry_set_default_path (fentry, path)
	GnomeFileEntry *fentry
	const char *path

void
gnome_file_entry_set_directory_entry (fentry, directory_entry)
	GnomeFileEntry *fentry
	gboolean directory_entry

gboolean
gnome_file_entry_get_directory_entry (fentry)
	GnomeFileEntry *fentry

char *
gnome_file_entry_get_full_path (fentry, file_must_exist)
	GnomeFileEntry * fentry
	gboolean file_must_exist
    CLEANUP:
	g_free (RETVAL);

void
gnome_file_entry_set_filename (fentry, filename)
	GnomeFileEntry *fentry
	const char *filename

void
gnome_file_entry_set_modal (fentry, is_modal)
	GnomeFileEntry *fentry
	gboolean is_modal

gboolean
gnome_file_entry_get_modal (fentry)
	GnomeFileEntry *fentry


## deprecated
## void gnome_file_entry_set_directory(GnomeFileEntry *fentry, gboolean directory_entry) 
