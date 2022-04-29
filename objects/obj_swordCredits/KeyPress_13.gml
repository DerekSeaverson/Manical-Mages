/// @description Sword Attack
if (audio_is_playing(snd_healthConsume)) {
	audio_stop_sound(snd_healthConsume);
}
audio_play_sound(snd_swordSwish, 1, false);
