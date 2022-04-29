/// @description Attack
if (canAttack && playerHealth > 0 && !isTalking) {
	//alarm attack delay to reduce spamming
	audio_play_sound(snd_swordSwish, 2, false);
	alarm_set(0, room_speed * 1.25);
	canAttack = false;
	instance_create_layer(x, y, "Instances", obj_sword);
}
