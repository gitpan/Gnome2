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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeClient.xs,v 1.5 2003/09/21 17:59:37 kaffeetisch Exp $
 */

#include "gnome2perl.h"

static void
gtk2perl_gnome_interact_function (GnomeClient *client,
				  gint key,
				  GnomeDialogType dialog_type,
				  GPerlCallback * callback)
{
	gperl_callback_invoke (callback, NULL, client, key, dialog_type);
}

static GPerlCallback *
gtk2perl_gnome_interact_function_create (SV * func, SV *data)
{
	GType param_types [] = {
		GNOME_TYPE_CLIENT,
		G_TYPE_INT,
		GNOME_TYPE_DIALOG_TYPE,
	};
	return gperl_callback_new (func, data, G_N_ELEMENTS (param_types),
				   param_types, 0);
}


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

## void gnome_client_set_restart_command (GnomeClient *client, gint argc, gchar *argv[]) 
## void gnome_client_set_discard_command (GnomeClient *client, gint argc, gchar *argv[]) 
## void gnome_client_set_resign_command (GnomeClient *client, gint argc, gchar *argv[]) 
## void gnome_client_set_shutdown_command (GnomeClient *client, gint argc, gchar *argv[]) 
## void gnome_client_set_clone_command (GnomeClient *client, gint argc, gchar *argv[]) 
void
set_commands (client, ...)
	GnomeClient *client
    ALIAS:
	Gnome2::Client::set_restart_command = 1
	Gnome2::Client::set_discard_command = 2
	Gnome2::Client::set_resign_command = 3
	Gnome2::Client::set_shutdown_command = 4
	Gnome2::Client::set_clone_command = 5
    PREINIT:
	gint argc, i;
	gchar ** argv;
    CODE:
	argc = items - 1;
	argv = g_new0 (gchar*, argc);

	for (i = 1; i < items; i++)
		argv[i - 1] = SvGChar (ST (i));

	switch (ix) {
		case 1: gnome_client_set_restart_command (client, argc, argv); break;
		case 2: gnome_client_set_discard_command (client, argc, argv); break;
		case 3: gnome_client_set_resign_command (client, argc, argv); break;
		case 4: gnome_client_set_shutdown_command (client, argc, argv); break;
		case 5: gnome_client_set_clone_command (client, argc, argv); break;
	}

	g_free (argv);

## void gnome_client_add_static_arg (GnomeClient *client, ...) 
void
gnome_client_add_static_arg (client, ...)
	GnomeClient *client
    PREINIT:
	gint i;
	gchar ** argv;
    CODE:
	argv = g_new0 (gchar*, items - 1);
	for (i = 1; i < items; i++)
		argv[i - 1] = SvGChar (ST (i));
	gnome_client_add_static_arg (client, argv, NULL);
	g_free (argv);

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

# FIXME: the callback isn't called. why?
## void gnome_client_request_interaction (GnomeClient *client, GnomeDialogType dialog_type, GnomeInteractFunction function, gpointer data) 
## void gnome_client_request_interaction_interp (GnomeClient *client, GnomeDialogType dialog_type, GtkCallbackMarshal function, gpointer data, GtkDestroyNotify destroy) 
void
gnome_client_request_interaction (client, dialog_type, function, data=NULL)
	GnomeClient *client
	GnomeDialogType dialog_type
	SV * function
	SV * data
    PREINIT:
	GPerlCallback * callback;
    CODE:
	callback = gtk2perl_gnome_interact_function_create (function, data);
	gnome_client_request_interaction (client,
	                                  dialog_type,
	                                  (GnomeInteractFunction)
	                                  	gtk2perl_gnome_interact_function,
	                                  callback);
	g_object_set_data_full (G_OBJECT (client),
	                        "_interact_callback",
	                        callback,
	                        (GDestroyNotify) gperl_callback_destroy);

# FIXME: needs renaming/aliasing.
## void gnome_interaction_key_return (gint key, gboolean cancel_shutdown) 
void
gnome_interaction_key_return (key, cancel_shutdown)
	gint key
	gboolean cancel_shutdown
