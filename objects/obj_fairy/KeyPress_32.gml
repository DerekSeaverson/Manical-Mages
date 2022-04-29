/// @description Progress Messages
if (isPlayer && obj_gameController.mageKillCount >= 15) {
	displayValue += 1;
} else {
	obj_player.isTalking = false;
	isPlayer = false;
	canTalk = false;
	alarm_set(0, room_speed * 2);
}
