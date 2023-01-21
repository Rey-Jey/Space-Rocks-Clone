score = 0;
lives = 5;

draw_set_font(fnt_text);

randomize();

enum factions {
	neutral,
	ally, 
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	eight_bullets,
	laser,
	invincible
}
