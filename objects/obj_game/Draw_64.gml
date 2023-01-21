switch (room) {
	case Room1:
	draw_text(20, 20 , "SCORE: " + string(score));
	draw_text(20, 40 , "LIVES: " + string(lives));
	break;
	
	case rm_start:
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text_transformed_color(room_width/2, 100, "SPACE ROCKS",
	3, 3, 0, c,c,c,c, 1
	);
	
	draw_text(room_width/2, 200, 
	@"Score 1,000 points to win
	
	SPACE: move
	LMB: shoot
	
	>> ENTER TO START <<
	"
	);
	draw_set_halign(fa_left);
	break;
	
	case rm_win:
		draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_color(room_width/2, 200, "You Win!",
	3, 3, 0, c,c,c,c, 1
	);
	
	draw_text(room_width/2, 300, 
	"ENTER TO RESTART"
	);
	draw_set_halign(fa_left);
	break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color(room_width/2, 150, "Game Over!",
	3, 3, 0, c,c,c,c, 1
	);
	
	draw_text(room_width/2, 250, "Try Again?");
	
	draw_text(room_width/2, 300, "FINAL SCORE: " + string(score));
	
	draw_text(room_width/2, 350, "ENTER TO RESTART");
	
	draw_set_halign(fa_left);
	break;
}
