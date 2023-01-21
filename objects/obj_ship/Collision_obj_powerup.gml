with(other) {
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type) {
		case powerups.invincible:
			audio_play_sound(perc__3_, 1, false);
			invincible = true;
			alarm [1] = 8 * room_speed;
			break;
			
		default:
			guns = powerup_type;
			alarm[0] = 5*room_speed;
			break;
			
		
		
}