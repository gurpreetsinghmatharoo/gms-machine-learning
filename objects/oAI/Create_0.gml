/// @description 
event_inherited();

// Action entry object properties
enum _an {
	action,
	values,
	
	conditions
}

// Conditional object properties
enum _conditions {
	close_tiles,
	close_edges,
	close_enemies
}
	enum _tiles {
		direction,
		distance
	}
	enum _enemies {
		direction,
		distance
	}

// Conditional conditional constants
#macro _tiles_MaxDist 128
#macro _enemies_MaxDist 160

// Conditions database
condDat = ds_list_create();