/// @description Initialize variables

cell_size = 64;

function update_level_completed()
{
	var _level_completed = true;
	for (var _i = 0; _i < array_length(stat_targets); _i += 1) {
		if (stat_current[_i] < stat_targets[_i]) {
			_level_completed = false;
		}
	}

	level_completed = _level_completed;
}

/// @param _stats {Array<Real>} the stats of an ingredient to add to this grid's stats
/// @description Adds the given stats to this grid's current stats.
function add_stats(_stats)
{
	for (var _i = 0; _i < array_length(_stats); _i += 1) {
		// add to current
		stat_current[_i] += _stats[_i];
	}
	update_level_completed();
}

/// @param _stats {Array<Real>} the stats of an ingredient to remove from this grid's stats
/// @description Removes the given stats from this grid's current stats.
function remove_stats(_stats)
{
	for (var _i = 0; _i < array_length(_stats); _i += 1) {
		// add to current
		stat_current[_i] -= _stats[_i];
	}
	update_level_completed();
}


#region Instance variables

/* cell content code:
0: empty
1: occupied
*/
sprite_index = obj_game.get_current_grid_sprite();
cells = obj_game.get_current_grid_cells();

stat_targets = obj_game.get_current_stat_targets();
stat_current = array_create(array_length(stat_targets), 0);

level_completed = false;
update_level_completed()

#endregion

// Place pre-occupied cells
for (var _j = 0; _j < array_length(cells); _j++) {
	for (var _i = 0; _i < array_length(cells); _i++) {
		if (cells[_j][_i] == CELL_CONTENT.UNAVAILABLE) {
			var _x = ((_i * cell_size) + x);
			var _y = ((_j * cell_size) + y);
			var _layer = layer_get_id("LayerIngredientsStill");
			instance_create_layer(_x, _y, _layer, obj_ingr_unavailable);
		}
	}
}
