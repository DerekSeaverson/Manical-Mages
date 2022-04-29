/// @description Potion Collision
if (canTakeDamage) {
	canTakeDamage = false;
	sprite_index = spr_bossTakeDamage;
	alarm_set(4, room_speed * 0.5);
	if (!audio_is_playing(snd_bossPotionDamage)) {
		audio_play_sound(snd_bossPotionDamage, 2, false);
	} 
	alarm_set(1, room_speed * 1.5);
	bossHealth -= 10;
}
