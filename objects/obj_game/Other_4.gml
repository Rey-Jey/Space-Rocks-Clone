if (room == Room1) {
	
	spawn_off_camera(obj_asteroid, 40);
	
	spawn_off_camera(obj_raider, 8);
	
	spawn_off_camera(obj_brute, 3);
	
	spawn_off_camera(obj_hunter, 5);
	
	if(audio_is_playing(head_empty_no_thoughts)){
		audio_stop_sound(head_empty_no_thoughts);
	}
	audio_play_sound(head_empty_no_thoughts, 2, true);
	
	alarm[0] = 60;
	alarm[2] = 5;
}