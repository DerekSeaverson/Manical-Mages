/// @description Movement
if (directionValue == 0 && !isPlayer) {
	sprite_index = spr_fairyLeft;
	//checks for object in front of fairy
	if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y) == 0)
	{
		x -= 0.75;
	} else {
		directionValue = 1;
	}
} else if (directionValue == 1 && !isPlayer) {
	sprite_index = spr_fairyRight;
	//checks for object in front of fairy
	if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y) == 0)
	{
		x += 0.75;
	} else {
		directionValue = 0;
	} 
} else if (isPlayer && !doneTalking) {
	sprite_index = spr_fairyDown;
} else if (doneTalking) {
	obj_player.isTalking = false;
	obj_castleDoor.canEnter = true;
	sprite_index = spr_fairyVanish;
	x -= 0.5;
	y -= 0.5;
}
