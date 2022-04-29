/// @description Sword Collision
if (canTakeDamage) {
	alarm_set(3, room_speed * 1.25);
	if (!audio_is_playing(snd_mageSwordDamage)) {
		audio_play_sound(snd_mageSwordDamage, 2, false);
	} 
	//display took damage white flash
	canTakeDamage = false;
	mageHealth -= 2;
}
