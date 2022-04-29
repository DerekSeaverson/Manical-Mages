/// @description Sword Collision
if (canTakeDamage) {
	canTakeDamage = false;
	sprite_index = spr_bossTakeDamage;
	alarm_set(4, room_speed * 0.5);
	if (!audio_is_playing(snd_bossSwordDamage)) {
		audio_play_sound(snd_bossSwordDamage, 2, false);
	}
	alarm_set(1, room_speed * 1.25);
	bossHealth -= 3;
}
