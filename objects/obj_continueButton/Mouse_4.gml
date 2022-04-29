obj_gameController.isPaused = false;
audio_play_sound(snd_unpauseGame, 1, false);
window_set_cursor(cr_none);
obj_quitGame.x = 0;
obj_quitGame.y = 0;
obj_continueButton.x = 0;
obj_continueButton.y = 0;
instance_activate_all();
instance_deactivate_object(obj_quitGame);
instance_deactivate_object(obj_continueButton);

