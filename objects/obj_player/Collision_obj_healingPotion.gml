/// @description Health Potion Pickup
// You can write your code in this editor
if (healthCount < 5) {
	audio_play_sound(snd_potionPickup, 2, false);
	instance_destroy(other);
	healthCount += 1;
}
