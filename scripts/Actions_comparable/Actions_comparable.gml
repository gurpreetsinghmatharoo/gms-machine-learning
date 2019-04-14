/// @arg myCond
/// @arg arrCond
var myCond = argument[0];
var arrCond = argument[1];

var comparable = true;

// Check if not comparable
// Tiles
var myTiles = myCond[_conditions.close_tiles];
var arrTiles = arrCond[_conditions.close_tiles];

for (var i=0; i<array_length_1d(arrTiles); i++) {
	// Data
	var arr = arrTiles[i];
	
	var dir = arr[0];
	var tile_dist = arr[1];
	
	// myData
	var arrMy = myTiles[i];
	
	var dirMy = arrMy[0];
	var tile_distMy = arrMy[1];
	
	// Compare
	if (dir != dirMy || abs(tile_dist - tile_distMy) > 8) {
		comparable = false;
	}
}

// Return
return comparable;