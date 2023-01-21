exhaustCount++;

if(exhaustCount >= 4){
	exhaustCount = 0
	var len = sprite_height*.4, 
	var _xx = x - lengthdir_x(len, image_angle),
	_yy = y - lengthdir_y (len, image_angle);
	with(obj_particles) {
		part_particles_create(partSys,_xx, _yy, partTypeExhaustD, 1);
	}
}