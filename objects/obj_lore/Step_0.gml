/// @description Waits for lore completion
// You can write your code in this editor
if (!audio_is_playing(snd_lore)) {
	audio_stop_all();
	room_goto(room_game);
}