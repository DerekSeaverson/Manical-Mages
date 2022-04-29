/// @description Thrown/Movement Script
//rotates object slightly to appear more realistic
move_towards_point(targetX, targetY, 1.5);
image_angle += sin(degtorad(pointDirection - image_angle)) * rotationSpeed; 
if (point_distance(x, y, targetX, targetY) < 0.6) {
	//destroys object once within set range of target
	//show_debug_message("Attack Potion Reached destination");
	instance_destroy();
} else if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_height / 2, y) != 0) {
	//explodes potion if hits barrier
	show_debug_message("Attack Potion Hit Wall");
	instance_destroy();
}

