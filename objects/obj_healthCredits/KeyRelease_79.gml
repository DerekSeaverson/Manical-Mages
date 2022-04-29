/// @description Health Consume
if (audio_is_playing(snd_swordSwish)) {
	audio_stop_sound(snd_swordSwish);
}
audio_play_sound(snd_healthConsume, 1, false);
