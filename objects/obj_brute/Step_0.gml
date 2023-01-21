event_inherited();

image_index = HP - 1;

//Player within range?

if(!instance_exists(obj_ship)) exit;

//Follow player
if(point_distance(x,y, obj_ship.x, obj_ship.y) < 250) {
	//Turn to player
	var new_angle = point_direction(x,y,obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.2);
	direction = image_angle;
	
	speed += 0.01;
}

else {
	speed = lerp(speed, orgSpd, 0.1);
}