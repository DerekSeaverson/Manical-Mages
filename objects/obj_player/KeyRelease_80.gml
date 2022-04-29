/// @description Throw Potion
if (potionCount > 0 && playerHealth > 0 && canThrowPotion && !isTalking && isTargetingPotion) {
	//is targeting boolean added as would throw error if player held P down after throwing first potion until after delay went away
	isTargetingPotion = false;
	canThrowPotion = false;
	alarm_set(2, room_speed * 2);
	potionX = obj_potionTarget.x;
	potionY = obj_potionTarget.y;
	instance_destroy(obj_potionTarget);
	potionCount -= 1;
	//create attackPotion and set variables for target
	instance_create_layer(x, y, "Instances", obj_attackPotion);
	obj_attackPotion.targetX = potionX;
	obj_attackPotion.targetY = potionY;
}

