///@description spawn_off_camera

function spawn_off_camera(obj, number){ 
	 obj = argument0;
	 number = argument1;

	var pad = 64;

	repeat(number) {
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);

		while(point_in_rectangle(xx, yy, global.camX - pad, global.camY - pad, 
		global.camX + global.camWidth+pad, global.camY+global.camHeight+pad)) {
	
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		}

		instance_create_layer(xx, yy, "Instances", obj);
	}
}