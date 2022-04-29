/// @description Attack Animation End
if (sprite_index == spr_magePurpleAttackDown || sprite_index == spr_magePurpleAttackLeft || sprite_index == spr_magePurpleAttackRight || sprite_index == spr_magePurpleAttackUp) {
	//tests directionValue before dispalying direction walk
	if (directionValue == 0) {
		sprite_index = spr_magePurpleLeft;
	} else if (directionValue == 1) {
		sprite_index = spr_magePurpleRight;
	} else if (directionValue == 2) {
		sprite_index = spr_magePurpleDown;
	} else if (directionValue == 3) {
		sprite_index = spr_magePurpleUp;
	}
}
