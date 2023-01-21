/// @description Powerups

draw_self();

//Draw guns
if(guns != -1) draw_sprite_ext(spr_ship_powerup, guns, x, y, image_xscale, image_yscale, image_angle,
image_blend, image_alpha);

//Draw invincible
if(invincible) {
	var alpha = min(1, alarm[1]/60);
	
	draw_sprite_ext(spr_ship_powerup, powerups.invincible, x, y, image_xscale, image_yscale, image_angle,
	image_blend, alpha);
}