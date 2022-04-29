/// @description Attack/Walk Control
//Base movement and attacking when player in radius
if (mageHealth > 0) {
	if (distance_to_object(obj_player) < 60 && canAttack) {
		canAttack = false
		alarm_set(0, room_speed * 4);
		isAttacking = true;
		if (object_exists(obj_player)) {
			if (directionValue == 0) {
				sprite_index = spr_magePurpleAttackLeft;
			} else if (directionValue == 1) {
				sprite_index = spr_magePurpleAttackRight
			} else if (directionValue == 2) {
				sprite_index = spr_magePurpleAttackDown;
			} else if (directionValue == 3) {
				sprite_index = spr_magePurpleAttackUp;
			}
			targetX = irandom_range(obj_player.x - 10, obj_player.x + 10);
			targetY = irandom_range(obj_player.y - 10, obj_player.y + 10);
			instance_create_layer(targetX, targetY, "Instances", obj_potionEnemyTarget);
			alarm_set(2, room_speed * 1);
		}
	} else if (directionValue == 0 && !isAttacking) {
		sprite_index = spr_magePurpleLeft;
		//checks for object in front of mage
		if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y) == 0)
		{
			x -= 0.5;
			y += 0;
		} else {
			directionValue = 1;
		}
	} else if (directionValue == 1 && !isAttacking) {
		sprite_index = spr_magePurpleRight;
		//checks for object in front of mage
		if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y) == 0)
		{
			x += 0.5;
			y += 0;
		} else {
			directionValue = 0;
		}
	} else if (directionValue == 2 && !isAttacking) {
		sprite_index = spr_magePurpleDown;
		//checks for object in front of mage
		if (tilemap_get_at_pixel(obj_gameController.tiles, x, y + sprite_height / 2) == 0)
		{
			x += 0;
			y += 0.5;
		} else {
			directionValue = 3;
		}
	} else if (directionValue == 3 && !isAttacking) {
		sprite_index = spr_magePurpleUp;
		//checks for object in front of mage
		if (tilemap_get_at_pixel(obj_gameController.tiles, x, y - sprite_height / 2) == 0)
		{
			x += 0;
			y -= 0.5;
		} else {
			directionValue = 2;
		}
	}
} else {
	instance_destroy();
}
