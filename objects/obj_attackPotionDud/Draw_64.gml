/// @description Message Display
if (instance_exists(obj_player)) {
	if (place_meeting(x,y, obj_player) && obj_player.potionCount == 5) {
		//show_debug_message("Place Meeting for Attack Potion Working");
		//draw_text(obj_player.x, obj_player.y, "Max Attack Potions");
		draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Max Attack Potions", c_black, c_black, c_black, c_black, 1);
	}
}
