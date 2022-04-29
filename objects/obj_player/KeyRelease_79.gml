/// @description Use Heal Potion
if (healthCount > 0 && playerHealth > 0 && playerHealth < 10) {
	audio_play_sound(snd_healthConsume, 2, false);
	playerHealth += 5;
	healthCount -= 1;
	if (playerHealth > 10) {
		playerHealth = 10;
	}
}
