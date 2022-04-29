/// @description Step
//tests for multiple keys being pressed at once
if (object_exists(obj_boss)) {
	if (kKey && shiftKey) {
		obj_boss.bossHealth = 0;
	}
}
