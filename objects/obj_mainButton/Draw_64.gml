/// @description Write text
//Changes location of text based on room (issue that I intend to hopefully find issue and fix at a later date)
if (room == room_lose) {
	draw_text_transformed(x + (sprite_width / 2), y - 130, "Main Menu", 4, 4, 0);
} else {
	draw_text_transformed(x + (sprite_width / 2), y - 45, "Main Menu", 4, 4, 0);
}
