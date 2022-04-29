/// @description Gain Health
if (instance_exists(obj_player)) {
	if (obj_player.playerHealth < 10) {
		obj_player.playerHealth += 1;
	}
}
