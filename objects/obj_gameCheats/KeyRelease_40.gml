/// @description Add Health Potion
if (instance_exists(obj_player)) {
	if (obj_player.healthCount < 5) {
		audio_play_sound(snd_potionPickup, 2, false);
		obj_player.healthCount += 1;
	}
}
