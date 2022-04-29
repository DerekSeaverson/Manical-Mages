/// @description Movement/Attack Management
if (bossPhase == 1) {
	//phase 1 movement/attack management
	if (directionValue == 0) {
		//up movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x, y - sprite_height / 2) == 0)
		{
			y -= bossSpeed;
		} else {
			directionValue = 2;
		}
	} else if (directionValue == 1) {
		//right movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y) == 0)
		{
			x += bossSpeed;
		} else {
			directionValue = 3;
		}
	} else if (directionValue == 2) {
		//down movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x, y + sprite_height / 2) == 0)
		{
			y += bossSpeed;
		} else {
			directionValue = 0;
		}
	} else if (directionValue == 3) {
		//left movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y) == 0 && !instance_place(x - sprite_width / 2 + bossSpeed, y, obj_castleDoor))
		{
			x -= bossSpeed;
		} else {
			directionValue = 1;
		}
	}
} else if (bossPhase == 2 || bossPhase == 3) {
	//phase 2/3 movement
	if (directionValue == 0) {
		//up movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x, y - sprite_height / 2) == 0)
		{
			y -= bossSpeed;
		} else {
			directionValue = 4;
		}
	} else if (directionValue == 2) {
		//right movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y) == 0)
		{
			x += bossSpeed;
		} else {
			directionValue = 6;
		}
	} else if (directionValue == 4) {
		//down movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x, y + sprite_height / 2) == 0)
		{
			y += bossSpeed;
		} else {
			directionValue = 0;
		}
	} else if (directionValue == 6) {
		//left movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y) == 0 && !instance_place(x - sprite_width / 2 + bossSpeed, y, obj_castleDoor))
		{
			x -= bossSpeed;
		} else {
			directionValue = 2;
		}
	} else if (directionValue == 1) {
		//right up diagonal movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y - sprite_height / 2) == 0)
		{
			x += bossSpeed;
			y -= bossSpeed;
		} else {
			directionValue = irandom_range(3, 6);
		}
	} else if (directionValue == 3) {
		//right down diagonal movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x + sprite_width / 2, y + sprite_height / 2) == 0)
		{
			x += bossSpeed;
			y += bossSpeed;
		} else {
			var dirValue = irandom(3);
			switch (dirValue) {
				case 0:
					directionValue = 6;
				break;
				
				case 1:
					directionValue = 7;
				break;
				
				case 2:
					directionValue = 0;
				break;
				
				case 3:
					directionValue = 1;
				break;
			}
		}
	} else if (directionValue == 5) {
		//left down diagonal movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y + sprite_height / 2) == 0 && !instance_place(x - sprite_width / 2 + bossSpeed, y, obj_castleDoor))
		{
			x -= bossSpeed;
			y += bossSpeed;
		} else {
			directionValue = irandom(3);
		}
	} else if (directionValue == 7) {
		//left up diagonal movement handler
		if (tilemap_get_at_pixel(obj_gameController.tiles, x - sprite_width / 2, y - sprite_height / 2) == 0 && !instance_place(x - sprite_width / 2 + bossSpeed, y, obj_castleDoor))
		{
			x -= bossSpeed;
			y -= bossSpeed;
		} else {
			directionValue = irandom_range(2, 5);
		}
	}
}
//attack functions
if (bossPhase == 1 || bossPhase == 2) {
	//attacks for phase 1 and 2
	if (canAttack && distance_to_object(obj_player < 75)) {
		canAttack = false;
		alarm_set(0, room_speed * 4);
		if (object_exists(obj_player)) {
			//creates attack previews on the player and randomly around player
			instance_create_layer(irandom_range(obj_player.x - 10, obj_player.x + 10), irandom_range(obj_player.y - 10, obj_player.y + 10), "Instances", obj_potionEnemyTarget);
			instance_create_layer(irandom_range(obj_player.x - 30, obj_player.x + 30), irandom_range(obj_player.y - 30, obj_player.y + 30), "Instances", obj_potionEnemyTarget);
		}
	}
} else if (bossPhase == 3) {
	//attacks for phase 3
	//phase 3 introduces faster attacks and faster movement
	//I intend to create a different wave-like attack but haven't implemented it cleanly by submission date so I have left it out
	if (canAttack && distance_to_object(obj_player < 75)) {
		canAttack = false;
		alarm_set(0, room_speed * 3);
		if (object_exists(obj_player)) {
			//creates attack previews on the player and randomly around player
			instance_create_layer(irandom_range(obj_player.x - 10, obj_player.x + 10), irandom_range(obj_player.y - 10, obj_player.y + 10), "Instances", obj_potionEnemyTarget);
			instance_create_layer(irandom_range(obj_player.x - 45, obj_player.x + 45), irandom_range(obj_player.y - 45, obj_player.y + 45), "Instances", obj_potionEnemyTarget);
			instance_create_layer(irandom_range(obj_player.x - 45, obj_player.x + 45), irandom_range(obj_player.y - 45, obj_player.y + 45), "Instances", obj_potionEnemyTarget);
		}
	}
}
//changes sprites triggers phase changes based on health level
if (bossHealth <= 0) {
	if (!audio_is_playing(snd_bossDeath)) {
		audio_play_sound(snd_bossDeath, 1, false);
		instance_destroy();
	}
} else if (bossHealth < 33) {
	if (bossPhase != 3) {
		show_debug_message("Phase 3 Activated");
		bossPhase = 3;
		bossSpeed = 2;
		sprite_index = spr_bossPhase3;
	}
} else if (bossHealth < 66) {
	if (bossPhase != 2) {
		show_debug_message("Phase 2 Activated");
		alarm_set(3, room_speed * 1);
		bossPhase = 2;
		sprite_index = spr_bossPhase2;
	}
}
