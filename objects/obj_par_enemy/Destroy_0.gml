audio_play_sound(sfx__3_, 1, false);
var _xx = x, _yy = y, _ib = image_blend;
with(obj_particles){
	part_particles_create_colour(partSys, _xx, _yy, partTypeShipDebrisD, _ib, 10);
}

switch(object_index) {
	case obj_raider: score += 15;  global.camShake = 3;break;
	case obj_hunter: score += 30;  global.camShake = 2;break;
	case obj_brute: score += 50;  global.camShake = 5; break;
}

if(irandom_range(0,2) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}