if (!audio_is_playing(snd_menuMusic)) {
	audio_play_sound(snd_menuMusic, 1, false);
}
//sends to start screen once credits is over
if (string_height(creditsText) + creditsHeight < 0) {
	room_goto(room_start);
}
