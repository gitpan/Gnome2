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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeScore.xs,v 1.6 2003/12/31 07:33:30 muppetman Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::Score	PACKAGE = Gnome2::Score	PREFIX = gnome_score_

##  gint gnome_score_init (const gchar *gamename) 
gint
gnome_score_init (class, gamename)
	const gchar *gamename
    C_ARGS:
	gamename

##  gint gnome_score_log (gfloat score, const gchar *level, gboolean higher_to_lower_score_order);
gint
gnome_score_log (class, score, level, higher_to_lower_score_order)
	gfloat score
	const gchar *level
	gboolean higher_to_lower_score_order
    C_ARGS:
	score, level, higher_to_lower_score_order

=for apidoc

Returns a reference to an array per player, containing the name, the score and the score time.

=cut
##  gint gnome_score_get_notable(const gchar *gamename, const gchar *level, gchar ***names, gfloat **scores, time_t **scoretimes);
void
gnome_score_get_notable (class, gamename, level)
	const gchar *gamename
	const gchar *level
    PREINIT:
	gint results, i;
	gchar **names;
	gfloat *scores;
	time_t *scoretimes;
    PPCODE:
	results = gnome_score_get_notable (gamename, level, &names, &scores, &scoretimes);

	for (i = 0; i < results; i++) {
		AV *set = newAV ();

		av_store (set, 0, newSVpv (names[i], PL_na));
		av_store (set, 1, newSVnv (scores[i]));
		av_store (set, 2, newSViv (scoretimes[i]));

		XPUSHs (sv_2mortal (newRV_noinc ((SV*) set)));
	}

	g_free (names);
	g_free (scores);
	g_free (scoretimes);
