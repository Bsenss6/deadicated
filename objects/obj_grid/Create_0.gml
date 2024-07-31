/// @description Initialize variables


cell_size = 64;


/// @param _stats {Array<Real>} the stats of an ingredient to add to this grid's stats
/// @description Adds the given stats to this grid's current stats.
function add_stats(_stats)
{
	for (var _i = 0; _i < array_length(_stats); _i += 1) {
		// add to current
		stat_current[_i] += _stats[_i];
	}
}

/// @param _stats {Array<Real>} the stats of an ingredient to remove from this grid's stats
/// @description Removes the given stats from this grid's current stats.
function remove_stats(_stats)
{
	for (var _i = 0; _i < array_length(_stats); _i += 1) {
		// add to current
		stat_current[_i] -= _stats[_i];
	}
}


#region Instance variables

/* cell content code:
0: empty
1: occupied
*/
sprite_index = obj_game.get_current_grid_sprite();
cells = obj_game.get_current_grid_cells();
stat_targets = obj_game.get_current_stat_targets();
stat_current = [0, 0, 0, 0, 0];

#endregion
