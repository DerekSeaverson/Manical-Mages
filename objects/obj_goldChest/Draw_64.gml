/// @description Message Display
if (isPlayer && !isOpened && obj_bossDoor.bossCanEnter) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "You already have\na key", c_red, c_red, c_red, c_red, 1);
} else if (isPlayer && !isOpened) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Open Chest\n-Space-", c_red, c_red, c_red, c_red, 1);
} else if (isPlayer && isOpened && !containsKey) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "This chest didn't\ncontain a key", c_red, c_red, c_red, c_red, 1);
} else if (isPlayer && isOpened && containsKey) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "This chest contained\n a key!", c_red, c_red, c_red, c_red, 1);
}
