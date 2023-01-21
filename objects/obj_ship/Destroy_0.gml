lives -= 1;

with(obj_game) {
	alarm[1] = room_speed;
}

audio_play_sound(sfx__3_, 1, false);

var _xx = x, _yy = y, _ib = image_blend;

with(obj_particles){
	part_particles_create_colour(partSys, _xx, _yy, partTypeShipDebrisC, _ib, 10);
}