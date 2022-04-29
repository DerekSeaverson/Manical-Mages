/// @description Message Display
if (instance_exists(obj_player)) {
	if (place_meeting(x,y, obj_player) && obj_player.healthCount == 5) {
		//show_debug_message("Place Meeting for Health Potion Working");
		draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Max Health Potions", c_black, c_black, c_black, c_black, 1);
		//draw_text(view_wport[0] / 2, view_hport[0] / 2 - 10, "Max Health Potions");
	}
}
