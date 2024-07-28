/// @description Initialize variables

cell_number_x = 6;
cell_number_y = 6;
cell_size = 64;


/* cell content code:
0: empty
1: ingredient_1
*/
cells = [
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
];

/* stat arrays:
[name, target, current]
*/
stats = [
	["richness",   3, 0],
	["brilliance", 0, 0],
	["purity",     0, 0],
	["magic",      2, 0],
	["life",       2, 0],
];


/// @param _stats {Array<Real>} the stats of an ingredient to add to this grid's stats
/// @description Adds the given stats to this grid's current stats.
function add_stats(_stats)
{
	for (var _i = 0; _i < array_length(_stats); _i += 1) {
		// add to current
		stats[_i][2] += _stats[_i];
	}
}

/// @param _stats {Array<Real>} the stats of an ingredient to remove from this grid's stats
/// @description Removes the given stats from this grid's current stats.
function remove_stats(_stats)
{
	for (var _i = 0; _i < array_length(_stats); _i += 1) {
		// add to current
		stats[_i][2] -= _stats[_i];
	}
}
