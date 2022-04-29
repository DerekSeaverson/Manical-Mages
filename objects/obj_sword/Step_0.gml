//manages sword direction
if (keyboard_check(ord("W"))) {
	pointDirection = "up";
} else if (keyboard_check(ord("A"))) {
	pointDirection = "left";
} else if (keyboard_check(ord("S"))) {
	pointDirection = "down";
} else if (keyboard_check(ord("D"))) {
	pointDirection = "right";
}

//manages sword display direction
if (pointDirection == "left") {
	sprite_index = spr_swordLeft;
	x = obj_player.x - 2;
	y = obj_player.y + 3;
} else if (pointDirection == "right") {
	sprite_index = spr_swordRight;
	x = obj_player.x + 2;
	y = obj_player.y + 3;
} else if (pointDirection == "down") {
	sprite_index = spr_swordDown;
	x = obj_player.x - 4;
	y = obj_player.y + 5;
} else if (pointDirection == "up") {
	sprite_index = spr_swordUp;
	x = obj_player.x + 3;
	y = obj_player.y + 4;
} 
