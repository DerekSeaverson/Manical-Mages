/// @description Checks for Player Distance
if (obj_player.x - x > 5 && obj_player.x - x < 10) {
	visible = true;
	obj_castleDoor.visible = true;
	bossCanEnter = false;
}

