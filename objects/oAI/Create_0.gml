/// @description 
event_inherited();

// Props
image_blend = c_fuchsia;

// Action entry object properties
enum _an {
	action,
	values,
	
	conditions
}

// Conditional object properties
enum _conditions {
	booleans,
	
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
#macro _tiles_MaxDist 96
#macro _edges_MaxDist 96
#macro _enemies_MaxDist 160

// Conditions database
condDat = ds_list_create();