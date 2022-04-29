/// @description Walk Direction
if (keyboard_check(ord("A"))) {
	sprite_index = spr_maleLeftCredits;
} else if (keyboard_check(ord("S"))) {
	sprite_index = spr_maleDownCredits;
} else if (keyboard_check(ord("D"))) {
	sprite_index = spr_maleRightCredits;
} else if (keyboard_check(ord("W"))) {
	sprite_index = spr_maleUpCredits;
} else {
	sprite_index = spr_maleStandCredits;
}
