/// @arg myCond
/// @arg arrCond
var myCond = argument[0];
var arrCond = argument[1];

var comparable = true;

// Check if not comparable
// Booleans
var myBools = myCond[_conditions.booleans];
var arrBools = arrCond[_conditions.booleans];

for (var i=0; i<array_length_1d(arrBools); i++) {
	if (arrBools[i] != myBools[i]) {
		comparable = false;
	}
}

// Tiles
var myTiles = myCond[_conditions.close_tiles];
var arrTiles = arrCond[_conditions.close_tiles];

var matching = array_length_1d(arrTiles);

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
	if (dir != dirMy || abs(tile_dist - tile_distMy) > 8 || (tile_dist==-1 && tile_distMy!=-1) || (tile_dist!=-1 && tile_distMy==-1)) {
		matching--;
	}
}

if (matching <= 1) {
	comparable = false;
}

// Edges
var myEdges = myCond[_conditions.close_edges];
var arrEdges = arrCond[_conditions.close_edges];

var matching = array_length_1d(arrEdges);

for (var i=0; i<array_length_1d(arrEdges); i++) {
	// Data
	var arr = arrEdges[i];
	
	var dir = arr[0];
	var dist = arr[1];
	var ground_below = arr[2];
	
	// myData
	var arrMy = myEdges[i];
	
	var dirMy = arrMy[0];
	var distMy = arrMy[1];
	var ground_belowMy = arrMy[2];
	
	// Compare
	if (dir != dirMy || abs(dist - distMy) > 4 || (dist==-1 && distMy!=-1) || (dist!=-1 && distMy==-1) || ground_below != ground_belowMy) {
		matching--;
	}
}

if (matching <= 1) {
	comparable = false;
}

// Return
return comparable;