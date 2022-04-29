/// @description Movement
if (directionValue == 0) {
	sprite_index = spr_smallFishLeft;
	//checks for object in front of fish
	if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_height / 2, y) == 0)
	{
		x += -0.5;
		y += 0;
	} else {
		directionValue = 1;
	}
} else if (directionValue == 1) {
	sprite_index = spr_smallFishRight;
	//checks for object in front of fish
	if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_height / 2, y) == 0)
	{
		x += 0.5;
		y += 0;
	} else {
		directionValue = 0;
	}
} else if (directionValue == 2) {
	sprite_index = spr_smallFishDown;
	//checks for object in front of fish
	if (tilemap_get_at_pixel(obj_gameController.tiles, x, y + sprite_height / 2) == 0)
	{
		x += 0;
		y += 0.5;
	} else {
		directionValue = 3;
	}
} else if (directionValue == 3) {
	sprite_index = spr_smallFishUp;
	//checks for object in front of fish
	if (tilemap_get_at_pixel(obj_gameController.tiles, x, y - sprite_height / 2) == 0)
	{
		x += 0;
		y += -0.5;
	} else {
		directionValue = 2;
	}
}

