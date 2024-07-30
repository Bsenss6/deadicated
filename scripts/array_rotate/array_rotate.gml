/// @param _matrix {Array<Array<Any>>} the 2D matrix to rotate clockwise
/// @description Takes an n by m 2D matrix and return its rotation (a m by n matrix).
function array_rotate(_matrix)
{
	var _height = array_length(_matrix);
	var _width = array_length(_matrix[0]);
	var _new_matrix = array_create(_width);
	
	for (var _i = 0; _i < _width; _i += 1) {
		_new_matrix[_i] = array_create(_height);
		for (var _j = 0; _j < _height; _j += 1) {
			_new_matrix[_i][_height-_j-1] = _matrix[_j][_i];
		}
	}
	
	return _new_matrix;
}
