/// @description Red Mage Attack
if (canTakeDamage) {
	if (!audio_is_playing(snd_playerTakeDamage)) {
		audio_play_sound(snd_playerTakeDamage, 2, false);
	}
	playerHealth -= 3;
	canTakeDamage = false;
	alarm_set(1, 2 * room_speed);
}
