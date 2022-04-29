/// @description Add Attack Potion
if (instance_exists(obj_player)) {
	if (obj_player.potionCount < 5) {
		audio_play_sound(snd_potionPickup, 2, false);
		obj_player.potionCount += 1;
	}
}

