/// @description Character/Pause Info
//Display pause Information

//loop displays hearts based on character health
if (instance_exists(obj_player)) {
	for (var i = 1; i < 10; i++) {
		if (i * 2 == obj_player.playerHealth) {
			draw_sprite(spr_heart_full, 0, (10 + 48 * (i - 1)), 10);
		} else if (i * 2 == obj_player.playerHealth + 1) {
			draw_sprite(spr_heart_half, 0, (10 + 48 * (i - 1)), 10);
		} else if (i * 2 > obj_player.playerHealth) {
			//does nothing if i * 2 is > than player health
		} else {
			draw_sprite(spr_heart_full, 0, (10 + 48 * (i - 1)), 10);
		}
	}
	//displays health potion count on screen
	for (var i = 0; i < obj_player.healthCount; i++) {
		draw_sprite(spr_healingPotionDisplay, 0, (32 + 20 * (i - 1)), 65);
	}
	for (var i = 0; i < obj_player.potionCount; i++) {
		draw_sprite(spr_attackPotionDisplay, 0, (32 + 20 * (i - 1)), 100);
	}
}
