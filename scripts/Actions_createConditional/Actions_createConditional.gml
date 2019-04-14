/// @arg arrCond
var arrCond = argument[0];

// Values
push(arrCond[_conditions.booleans], grounded);

// Tiles
for (var i=0; i<4; i++) {
	var dir = i * 90;
	var dist = _tiles_MaxDist;
	
	//Check for tile in that direction
	var tile_dist = collision_line_tile(x, y, x + lengthdir_x(dist, dir), y + lengthdir_y(dist, dir));
	
	//if (tile_dist > -1) {
	if (1) {
		// Add
		push(arrCond[_conditions.close_tiles], [dir, tile_dist]);
		
		// Debug draw
		if (object_index == oPlayer && tile_dist > -1) {
			surface_set_target(oManager.debugSurf);
		
			draw_line_width_color(x, y, x + lengthdir_x(dist, dir), y + lengthdir_y(dist, dir), 2, c_white, c_red);
			
			draw_set_color(c_blue);
			draw_arrow(x, y, x + hor * 32, y, 10);
			
			if (hor == 0) draw_circle(x, y, 10, 0);
			draw_set_color(c_white);
		
			surface_reset_target();
		}
	}
}

// Edges
for (var i=0; i<2; i++) {
	var dir = i * 180;
	
	// Check where it ends
	var dist = -1;
	var ground_below = false;
	
	for (var j=16; j<_edges_MaxDist * grounded; j+=4) {
		if (!tilemap_collision(global.tilemap, x + j, bbox_bottom + 16)) {
			dist = j;
			ground_below = collision_line_tile(x + j, bbox_bottom + 16, x + j, room_height);
			
			// Debug draw
			if (object_index == oPlayer) {
				surface_set_target(oManager.debugSurf);
			
				draw_set_color(c_red);
				draw_arrow(x + j, bbox_bottom, x + j, bbox_bottom + 20, 16);
				draw_set_color(c_white);
		
				surface_reset_target();
			}
			
			break;
		}
	}
	
	// Add
	push(arrCond[_conditions.close_edges], [dir, dist, ground_below]);
}