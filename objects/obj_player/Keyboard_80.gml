/// @description Potion Throw Area
//create potion being held by character
if (playerHealth > 0 && potionCount > 0 && canThrowPotion && !isTalking) {
	isTargetingPotion = true;
	if (charDirection == "left") {
		if (object_exists(obj_potionTarget)) {
			instance_destroy(obj_potionTarget);
		}
		instance_create_layer(x - 65, y, "Instances", obj_potionTarget);
	} else if (charDirection == "right") {
		if (object_exists(obj_potionTarget)) {
			instance_destroy(obj_potionTarget);
		}
		instance_create_layer(x + 65, y, "Instances", obj_potionTarget);
	} else if (charDirection == "up") {
		if (object_exists(obj_potionTarget)) {
			instance_destroy(obj_potionTarget);
		}
		instance_create_layer(x, y - 65, "Instances", obj_potionTarget);
	} else if (charDirection == "down") {
		if (object_exists(obj_potionTarget)) {
			instance_destroy(obj_potionTarget);
		}
		instance_create_layer(x, y + 65, "Instances", obj_potionTarget);
	}
}
