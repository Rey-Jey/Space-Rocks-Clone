event_inherited();

//Player within range?

if(!instance_exists(obj_ship)) exit;

if(point_distance(x,y, obj_ship.x, obj_ship.y) < 250) {
	//Turn to player
	var new_angle = point_direction(x,y,obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.2);
	direction = image_angle;
	
if(point_distance(x,y, obj_ship.x, obj_ship.y) < 150) {
	speed -= 0.05;
}	

else {speed += 0.02;}

	//Fire!
	bullet_counter++;
	if(bullet_counter >= 40) {
	create_bullet(image_angle, 8, faction);
	bullet_counter = 0;
	}
}

else {
	speed = lerp(speed, orgSpd, 0.1);
}