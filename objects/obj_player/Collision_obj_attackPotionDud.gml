/// @description Attack Potion Pickup
// You can write your code in this editor
if (potionCount < 5) {
	audio_play_sound(snd_potionPickup, 2, false);
	instance_destroy(other);
	potionCount += 1;
}
