/// @description Display Text
if (isPlayer && obj_gameController.mageKillCount >= 15) {
	//test if player has killed all enemies in forest region
	//display message (possible timer with alarms to change text?)
	switch (displayValue) {
		case 0:
			draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Thank you for your help.\nYou have cleared enough mages\nout of my forest.\n-Space-", c_black, c_black, c_black, c_black, 1);
		break;
		
		case 1:
			draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "I can now return home\nsafetly. Now we must remove\nthem from the world.\n-Space-", c_black, c_black, c_black, c_black, 1);
		break;
		
		case 2:
			draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "I have saved this key\nso you can access their castle\nlocated in the desert.\n-Space-", c_black, c_black, c_black, c_black, 1);
		break;
		
		case 3:
			draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Here is the key.\nI am happy someone\nis finally here to free\nmy world from those mages.\n-Space-", c_black, c_black, c_black, c_black, 1);
		break;
		
		default:
			draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "Good Luck!", c_black, c_black, c_black, c_black, 1);
			doneTalking = true;
	}
} else if (isPlayer) {
	draw_text_color(view_wport[0] + 565, view_hport[0] + 320, "You must kill " + string(15 - obj_gameController.mageKillCount) + " more\nmages before I can\nhelp you.\n-Space-", c_black, c_black, c_black, c_black, 1);
}
