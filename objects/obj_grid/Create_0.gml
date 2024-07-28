/// @description Initialize variables

enum STAT_ID {
	BRILLIANCE, // 0
	MAGIC,		// 1
	PURITY, 	// 2
	LIFE,		// 3
	RICHNESS,	// 4
}

cell_number_x = 6;
cell_number_y = 6;
cell_size = 64;


/* cell content code:
0: empty
1: occupied
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
stats = array_create(5);
stats[STAT_ID.BRILLIANCE] = ["Brilliance", 0, 0];
stats[STAT_ID.MAGIC] =		["Magic",      0, 0];
stats[STAT_ID.PURITY] =		["Purity",     0, 0];
stats[STAT_ID.LIFE]	=		["Life",       0, 0];
stats[STAT_ID.RICHNESS] =	["Richness",   0, 0];


/// @param _stat_id {STAT_ID} the id of the stat to update
/// @param _target {Real} the new target value
/// @description Set the target  value of the given stat.
function set_stat_target(_stat_id, _target)
{
	stats[_stat_id][2] = _target;
}

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
