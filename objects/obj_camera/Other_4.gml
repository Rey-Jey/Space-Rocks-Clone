/// @Description Camera 

global.camX = 0;
global.camY = 0;
target = obj_ship;

global.camWidth = 500;
global.camHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.camWidth, global.camHeight);

if(instance_exists(target)) {
global.camX = target.x - (global.camWidth/2);
global.camY = target.y - (global.camHeight/2);

global.camX = clamp(global.camX, 0, room_width - global.camWidth);
global.camY = clamp(global.camY, 0, room_height - global.camHeight);
}

camera_set_view_pos(view_camera[0], global.camX, global.camY);

displayScale = 2;
displayWidth = global.camWidth * displayScale;
displayHeight = global.camWidth * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

display_set_gui_size(global.camWidth, global.camHeight);

alarm[0] = 1;
