/// @description Display Message
if (bossCanEnter && distance_to_object(obj_player) < 8 && obj_player.x < x) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Enter...\nif you dare\n-Space-", c_red, c_red, c_red, c_red, 1);
} else if (distance_to_object(obj_player) < 8 && obj_player.x < x) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "You must have a\nkey to enter.\n", c_red, c_red, c_red, c_red, 1);
} else if (distance_to_object(obj_player) < 8 && obj_player.x > x) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "You must defeat the\nboss to leave.", c_red, c_red, c_red, c_red, 1);
}
