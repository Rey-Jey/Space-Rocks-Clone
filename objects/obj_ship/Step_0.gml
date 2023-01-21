image_angle = point_direction(x, y, mouse_x, mouse_y);

cursor_sprite = spr_cursor;

window_set_cursor(cr_none);

if (keyboard_check(vk_space)) {
	if(invincible){
		motion_add(image_angle, 2)
		if (speed >10) {speed = 10};
	}
	
	else {
		motion_add(image_angle, 0.3)
		if (speed > 4) {speed = 4;}
	}
	
	
	exhaustCount++;
	if(exhaustCount >= 5){
		if (invincible) {
		global.camShake = 5;
		}
		exhaustCount = 0
		var len = sprite_height*.4, 
		var _xx = x - lengthdir_x(len, image_angle),
		_yy = y - lengthdir_y (len, image_angle);
		with(obj_particles) {
			part_particles_create(partSys,_xx, _yy, partTypeExhaustC, 1);
		}
	}
}

if (mouse_check_button_pressed (mb_left)) {
	create_bullet(image_angle, bulletSpd, faction, id, guns);
}

move_wrap(true, true, sprite_width/2);
