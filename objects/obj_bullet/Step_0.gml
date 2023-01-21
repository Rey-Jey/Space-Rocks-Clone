if(!point_in_rectangle(x, y, 
global.camX, global.camY, 
global.camX + global.camWidth, global.camY + global.camHeight)) {
	instance_destroy();
}