/// @description create a power up

if(irandom_range(0,5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}

score += 10;
audio_play_sound(crash__1_, 1, false);

var _xx = x, _yy = y;

if (sprite_index == spr_asteroid_huge) {
	global.camShake = 4;
	with(obj_particles){
		part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 12);
	}
	repeat(2){
	var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
	new_asteroid.sprite_index = spr_asteroid_med;
	}
}
	
else if (sprite_index == spr_asteroid_med){
	global.camShake = 2
	with(obj_particles){
		part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 8);
	}
	repeat(2) {
	var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
	new_asteroid.sprite_index = spr_asteroid_small;
	}

}

else {
	global.camShake = 1;
	with(obj_particles){
		part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 12);
		}
	}
