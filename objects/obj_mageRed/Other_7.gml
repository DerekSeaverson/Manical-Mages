/// @description Attack Animation End
if (sprite_index == spr_mageRedAttackDown || sprite_index == spr_mageRedAttackLeft || sprite_index == spr_mageRedAttackRight || sprite_index == spr_mageRedAttackUp) {
	//tests directionValue before dispalying direction walk
	if (directionValue == 0) {
		sprite_index = spr_mageRedLeft;
	} else if (directionValue == 1) {
		sprite_index = spr_mageRedRight;
	} else if (directionValue == 2) {
		sprite_index = spr_mageRedDown;
	} else if (directionValue == 3) {
		sprite_index = spr_mageRedUp;
	}
}
