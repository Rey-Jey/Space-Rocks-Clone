// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_bullet(_dir, _spd, _fac, _creator, _gun_type){
	
	//Choose gun type
	switch(_gun_type) {
		
		case powerups.three_bullets:
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(inst, _dir, _spd, _fac, id);
		
		case powerups.two_bullets:
			audio_play_sound(perc__2_, 1, false);
			
			var _sep = 7;
			
			var inst = instance_create_layer(x + lengthdir_x(_sep,_dir + 90), y + lengthdir_y(_sep,_dir + 90), "Instances", obj_bullet);
			initialize_bullet(inst, _dir, _spd, _fac, id);
			
			var inst = instance_create_layer(x + lengthdir_x(_sep,_dir - 90), y + lengthdir_y(_sep,_dir - 90), "Instances", obj_bullet);
			initialize_bullet(inst, _dir, _spd, _fac, id);
			
			break;
	
		case powerups.four_bullets:
		audio_play_sound(perc__2_, 1, false);
			
			var _sep = 0, bullet_angle;
			
			var i = 0;
			repeat(4) {
				bullet_angle = _dir + (i *90);
				var inst = instance_create_layer(x + lengthdir_x(_sep,bullet_angle + 90), y + lengthdir_y(_sep,bullet_angle + 90), "Instances", obj_bullet);
				initialize_bullet(inst, bullet_angle, _spd, _fac, id);
				i++;
			}
		
			break;
		
		case powerups.eight_bullets:
		audio_play_sound(perc__2_, 1, false);
			
			var _sep = 0, bullet_angle;
			
			var i = 0;
			repeat(8) {
				bullet_angle = _dir + (i *45);
				var inst = instance_create_layer(x + lengthdir_x(_sep,bullet_angle + 90), y + lengthdir_y(_sep,bullet_angle + 90), "Instances", obj_bullet);
				initialize_bullet(inst, bullet_angle, _spd, _fac, id);
				i++;
			}
		
			break;
	
		case powerups.laser:
			audio_play_sound(perc__8_, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_laser);
			initialize_bullet(inst, _dir, _spd, _fac, id);
			break;
			
		default:
			audio_play_sound(perc__2_, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(inst, _dir, _spd, _fac, id);
			break;
	}
}