/// @description Music Controller
if (instance_exists(obj_player) && obj_player.x > 5980 && obj_player.x < 6690 && obj_player.y > 2410 && obj_player.y < 2815 && !isPaused) {
	if (!bossSpawned) {
		bossSpawned = true;
		instance_create_layer(6440, 2600, "Instances", obj_boss);
	}
	if (audio_is_playing(snd_overworld)) {
		audio_stop_sound(snd_overworld);
	}
	if (audio_is_playing(snd_castle)) {
		audio_stop_sound(snd_castle);
	}
	if (!audio_is_playing(snd_bossMusic)) {
		audio_play_sound(snd_bossMusic, 2, false);
	}
} else if (instance_exists(obj_player) && obj_player.x > 5115 && obj_player.x < 6690 && obj_player.y > 2410 && obj_player.y < 3955 && !isPaused) {
	//plays castle background music if player is within bounds of castle
	if (audio_is_playing(snd_overworld)) {
		audio_stop_sound(snd_overworld);
	}
	if (audio_is_playing(snd_bossMusic)) {
		audio_stop_sound(snd_bossMusic);
	}
	if (!audio_is_playing(snd_castle)) {
		audio_play_sound(snd_castle, 2, false);
	}
} else if (instance_exists(obj_player) && !isPaused) {
	if (audio_is_playing(snd_castle)) {
		audio_stop_sound(snd_castle);
	}
	if (audio_is_playing(snd_bossMusic)) {
		audio_stop_sound(snd_bossMusic);
	}
	if (!audio_is_playing(snd_overworld)) {
		audio_play_sound(snd_overworld, 2, false);
	}
}  /*else if (!audio_is_playing(snd_bossMusic) && player in radius of boss room && !isPaused) {
	if (audio_is_playing(snd_overworld)) {
		audio_stop_sound(snd_overworld);
	}
	if (audio_is_playing(snd_castle)) {
		audio_stop_sound(snd_castle);
	}
	if (!audio_is_playing(snd_bossMusic)) {
		audio_play_sound(snd_bossMusic, 2, false);
	}
}*/
if (isPaused) {
	//play pause menu music
}
/*if (instance_exists(obj_player)) {
	show_debug_message(string(obj_player.x) + ", " + string(obj_player.y));
}*/
 
