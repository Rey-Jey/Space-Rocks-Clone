///@description laser

draw_line_width_color(x,y, x + lengthdir_x(global.camWidth, direction), 
y + lengthdir_y(global.camHeight, direction), 2, image_blend, c_white);

//Collision
var inst = collision_line(x, y, x + lengthdir_x(global.camWidth, direction), 
y + lengthdir_y(global.camHeight, direction), obj_faction, false, false);

if (inst != noone) {
	if(inst.faction != faction) {
		with(inst) {
			if(!laser_immunity)
			event_perform(ev_other, ev_user1);
		}
	}
}