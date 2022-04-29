/// @description Lose Health
if (instance_exists(obj_player)) {
	if (obj_player.playerHealth > 0) {
		obj_player.playerHealth -= 1;
	}
}

