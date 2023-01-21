/// @description Follow ship
// You can write your code in this editor
if(room = Room1){
	window_mouse_set(clamp(window_mouse_get_x(), 0, window_get_width()), clamp(window_mouse_get_y(), 0, window_get_height()));
}

if(instance_exists(target)) {
global.camX = target.x - (global.camWidth/2);
global.camY = target.y - (global.camHeight/2);

global.camX = clamp(global.camX, 0, room_width - global.camWidth);
global.camY = clamp(global.camY, 0, room_height - global.camHeight);
}

//Camera Shake
global.camX += random_range(-global.camShake, global.camShake);
global.camX += random_range(-global.camShake, global.camShake);

if(global.camShake > 0){
	global.camShake -= 0.2;
	if(global.camShake < 0) global.camShake = 0;
}

//Camera pos
camera_set_view_pos(view_camera[0], global.camX, global.camY);

layer_x("para_0", global.camX*.9);
layer_y("para_0", global.camY*.9);

layer_x("para_1", global.camX*.7);
layer_y("para_1", global.camY*.7); 
