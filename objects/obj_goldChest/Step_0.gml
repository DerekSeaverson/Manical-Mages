/// @description Character Collision Test
//tests is player collides with chest
if (place_meeting(x, y, obj_player)) {
	isPlayer = true;
} else {
	isPlayer = false;
}
if (isOpened) {
	sprite_index = spr_goldChestOpen;
}
