/// @description Character movement
// You can write your code in this editor
if (playerHealth > 0) {
	//checks if collected tiles from collision layer are in front of player's path before moving
	if (keyboard_check(ord("W")) && tilemap_get_at_pixel(obj_gameController.tiles, x, y - sprite_height / 2) == 0 && !isTalking) {
		//isTalking added to prvent player from moving etc during discussion with fairy
		charDirection = "up";
		sprite_index = spr_maleWalkUp;
		y -= playerSpeed;
	} else if (keyboard_check(ord("S")) && tilemap_get_at_pixel(obj_gameController.tiles, x, y + sprite_height / 2) == 0 && !isTalking) {
		charDirection = "down";
		sprite_index = spr_maleWalkDown;
		y += playerSpeed;
	} else if (keyboard_check(ord("A")) && tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y) == 0 && !isTalking) {
		charDirection = "left";
		var left = false;
		//additional test for castle door entrance
		if (obj_castleDoor.visible) {
			left = instance_place(x - playerSpeed, y, obj_castleDoor);
		}
		sprite_index = spr_maleWalkLeft;
		if (!left) {
			x -= playerSpeed;
		}
	} else if (keyboard_check(ord("D")) && tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y) == 0 && !isTalking) {
		charDirection = "right";
		var right = false;
		sprite_index = spr_maleWalkRight;
		//additional test for castle door instance
		if (obj_castleDoor.visible) {
			right = instance_place(x + playerSpeed, y, obj_castleDoor);
		}
		if (!right) {
			x += playerSpeed;
		}
	} else if (isTalking) {
		//sets sprite to certain sprite while talking to fairy
		charDirection = "up";
		sprite_index = spr_maleStandUp;
	}
} else {
	sprite_index = spr_maleStandDown;
	if (!audio_is_playing(snd_playerDeath)) {
		alarm_set(3, room_speed * 1);
		audio_play_sound(snd_playerDeath, 2, false);
	}
}