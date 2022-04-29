/// @description Character/Pause Info
if (!isPaused) {
	isPaused = true;
	show_debug_message("Game Paused");
	audio_play_sound(snd_pauseGame, 1, false);
	window_set_cursor(cr_default);
	var posX = obj_player.x;
	var posY = obj_player.y;
	instance_deactivate_all(true);
	instance_activate_object(obj_quitGame);
	instance_activate_object(obj_continueButton);
	obj_quitGame.x = posX;
	obj_quitGame.y = posY + 25;
	obj_continueButton.x = posX;
	obj_continueButton.y = posY - 25;
} else {
	isPaused = false;
	show_debug_message("Game UnPaused");
	audio_play_sound(snd_unpauseGame, 1, false);
	window_set_cursor(cr_none);
	obj_quitGame.x = 0;
	obj_quitGame.y = 0;
	obj_continueButton.x = 0;
	obj_continueButton.y = 0;
	instance_activate_all();
	instance_deactivate_object(obj_quitGame);
	instance_deactivate_object(obj_continueButton);
}
