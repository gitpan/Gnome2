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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeClient.xs,v 1.3 2003/05/22 16:10:20 muppetman Exp $
 */

#include "gnome2perl.h"

// typedef void (*GnomeInteractFunction) (GnomeClient *client, gint key, GnomeDialogType dialog_type, gpointer data) 


MODULE = Gnome2::Client	PACKAGE = Gnome2::Client	PREFIX = gnome_client_


gboolean
connected (client)
	GnomeClient * client
    CODE:
	/* this naughty macro uses a pointer value as a truth value... */
	RETVAL = (gboolean) GNOME_CLIENT_CONNECTED (client);
    OUTPUT:
	RETVAL


GnomeClient *
gnome_client_master (class)
	SV * class
    CODE:
	RETVAL = gnome_master_client ();
    OUTPUT:
	RETVAL


const gchar *
gnome_client_get_config_prefix (client)
	GnomeClient *client

### FIXME the docs say the string is newly allocated but the signature says
###       it shouldn't be freed.  who do we believe?
const gchar *
gnome_client_get_global_config_prefix (client)
	GnomeClient *client

## void gnome_client_set_global_config_prefix (GnomeClient *client, const gchar* prefix) 
void
gnome_client_set_global_config_prefix (client, prefix)
	GnomeClient *client
	const gchar* prefix

GnomeClientFlags
gnome_client_get_flags (client)
	GnomeClient * client

## void gnome_client_set_restart_style (GnomeClient *client, GnomeRestartStyle style) 
void
gnome_client_set_restart_style (client, style)
	GnomeClient *client
	GnomeRestartStyle style

## void gnome_client_set_priority (GnomeClient *client, guint priority) 
void
gnome_client_set_priority (client, priority)
	GnomeClient *client
	guint priority

## FIXME get command line from perl arg stack
### void gnome_client_set_restart_command (GnomeClient *client, gint argc, gchar *argv[]) 
#void
#gnome_client_set_restart_command (client, argc, g)
#	GnomeClient *client
#	gint argc
#	gchar *argv[]

### void gnome_client_add_static_arg (GnomeClient *client, ...) 
#void
#gnome_client_add_static_arg (client, client)
#	GnomeClient *client
#	...

### void gnome_client_set_discard_command (GnomeClient *client, gint argc, gchar *argv[]) 
#void
#gnome_client_set_discard_command (client, argc, g)
#	GnomeClient *client
#	gint argc
#	gchar *argv[]

### void gnome_client_set_resign_command (GnomeClient *client, gint argc, gchar *argv[]) 
#void
#gnome_client_set_resign_command (client, argc, g)
#	GnomeClient *client
#	gint argc
#	gchar *argv[]
#
### void gnome_client_set_shutdown_command (GnomeClient *client, gint argc, gchar *argv[]) 
#void
#gnome_client_set_shutdown_command (client, argc, g)
#	GnomeClient *client
#	gint argc
#	gchar *argv[]

## void gnome_client_set_current_directory (GnomeClient *client, const gchar *dir) 
void
gnome_client_set_current_directory (client, dir)
	GnomeClient *client
	const gchar *dir

## void gnome_client_set_environment (GnomeClient *client, const gchar *name, const gchar *value) 
void
gnome_client_set_environment (client, name, value)
	GnomeClient *client
	const gchar *name
	const gchar *value

### void gnome_client_set_clone_command (GnomeClient *client, gint argc, gchar *argv[]) 
#void
#gnome_client_set_clone_command (client, argc, g)
#	GnomeClient *client
#	gint argc
#	gchar *argv[]

### these are not for applications
## void gnome_client_set_process_id (GnomeClient *client, pid_t pid) 
## void gnome_client_set_program (GnomeClient *client, const gchar *program) 
## void gnome_client_set_user_id (GnomeClient *client, const gchar *id) 

## void gnome_client_save_any_dialog (GnomeClient *client, GtkDialog *dialog) 
void
gnome_client_save_any_dialog (client, dialog)
	GnomeClient *client
	GtkDialog *dialog

## void gnome_client_save_error_dialog (GnomeClient *client, GtkDialog *dialog) 
void
gnome_client_save_error_dialog (client, dialog)
	GnomeClient *client
	GtkDialog *dialog

## void gnome_client_request_phase_2 (GnomeClient *client) 
void
gnome_client_request_phase_2 (client)
	GnomeClient *client

## void gnome_client_request_save (GnomeClient *client, GnomeSaveStyle save_style, gboolean shutdown, GnomeInteractStyle interact_style, gboolean fast, gboolean global) 
void
gnome_client_request_save (client, save_style, shutdown, interact_style, fast, global)
	GnomeClient *client
	GnomeSaveStyle save_style
	gboolean shutdown
	GnomeInteractStyle interact_style
	gboolean fast
	gboolean global

## void gnome_client_flush (GnomeClient *client) 
void
gnome_client_flush (client)
	GnomeClient *client

## DEPRECATED
## void gnome_client_disable_master_connection (void) 

GnomeClient *
gnome_client_new (class)
	SV * class
    C_ARGS:
	

GnomeClient *
gnome_client_new_without_connection (class)
	SV * class
    C_ARGS:
	

## void gnome_client_connect (GnomeClient *client) 
void
gnome_client_connect (client)
	GnomeClient *client

## void gnome_client_disconnect (GnomeClient *client) 
void
gnome_client_disconnect (client)
	GnomeClient *client

## docs say you don't need it
## void gnome_client_set_id (GnomeClient *client, const gchar *id) 

## may return NULL
const gchar * 
gnome_client_get_id (client)
	GnomeClient * client

## may return NULL
const gchar * 
gnome_client_get_previous_id (client)
	GnomeClient * client

## may return NULL
const gchar * 
gnome_client_get_desktop_id (client)
	GnomeClient * client


### void gnome_client_request_interaction (GnomeClient *client, GnomeDialogType dialog_type, GnomeInteractFunction function, gpointer data) 
#void
#gnome_client_request_interaction (client, dialog_type, function, data)
#	GnomeClient *client
#	GnomeDialogType dialog_type
#	GnomeInteractFunction function
#	gpointer data

### void gnome_client_request_interaction_interp (GnomeClient *client, GnomeDialogType dialog_type, GtkCallbackMarshal function, gpointer data, GtkDestroyNotify destroy) 
#void
#gnome_client_request_interaction_interp (client, dialog_type, function, data, destroy)
#	GnomeClient *client
#	GnomeDialogType dialog_type
#	GtkCallbackMarshal function
#	gpointer data
#	GtkDestroyNotify destroy
#
### void gnome_interaction_key_return (gint key, gboolean cancel_shutdown) 
#void
#gnome_interaction_key_return (key, cancel_shutdown)
#	gint key
#	gboolean cancel_shutdown

