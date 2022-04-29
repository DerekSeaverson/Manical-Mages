/// @description Potion Collision
if (canTakeDamage) {
	alarm_set(3, room_speed * 1.5);
	if (!audio_is_playing(snd_magePotionDamage)) {
		audio_play_sound(snd_magePotionDamage, 2, false);
	} 
	canTakeDamage = false;
	mageHealth -= 5;
}
