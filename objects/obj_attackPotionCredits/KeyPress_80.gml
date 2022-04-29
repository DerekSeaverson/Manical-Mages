/// @description Use Potion
if (audio_is_playing(snd_healthConsume)) {
	audio_stop_sound(snd_healthConsume);
} 
if (audio_is_playing(snd_swordSwish)) {
	audio_stop_sound(snd_swordSwish);
}
if (!audio_is_playing(snd_attackPotionBreak)) {
	audio_play_sound(snd_attackPotionBreak, 1, false);
}
