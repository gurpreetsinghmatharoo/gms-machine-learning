/// @arg arrCond
var arrCond = argument[0];

// Tiles
for (var i=0; i<4; i++) {
	var dir = i * 90;
	var dist = _tiles_MaxDist;
	
	//Check for tile in that direction
	var tile_dist = collision_line_tile(x, y, x + lengthdir_x(dist, dir), y + lengthdir_y(dist, dir));
	
	//if (tile_dist > -1) {
	if (1) {
		// Add
		push(arrCond[0], [dir, tile_dist]);
		
		// Debug draw
		if (object_index == oPlayer && tile_dist > -1) {
			surface_set_target(oManager.debugSurf);
		
			draw_line_width_color(x, y, x + lengthdir_x(dist, dir), y + lengthdir_y(dist, dir), 2, c_white, c_red);
		
			surface_reset_target();
		}
	}
}