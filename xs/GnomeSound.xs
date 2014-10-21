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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeSound.xs,v 1.5 2003/11/07 18:46:15 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::Sound	PACKAGE = Gnome2::Sound	PREFIX = gnome_sound_

##  int gnome_sound_connection_get (void) 
int
gnome_sound_connection_get (class)
    C_ARGS:
	/* void */

##  void gnome_sound_init(const char *hostname) 
void
gnome_sound_init (class, hostname="localhost")
	const char *hostname
    C_ARGS:
	hostname

##  void gnome_sound_shutdown(void) 
void
gnome_sound_shutdown (class)
    C_ARGS:
	/* void */

##  int gnome_sound_sample_load(const char *sample_name, const char *filename) 
int
gnome_sound_sample_load (class, sample_name, filename)
	const char *sample_name
	const char *filename
    C_ARGS:
	sample_name, filename

##  void gnome_sound_play (const char * filename) 
void
gnome_sound_play (class, filename)
	const char * filename
    C_ARGS:
	filename

