/// @description On Death
//Create chance for health potions and attack potions to drop
obj_gameController.mageKillCount += 1;
var chance = irandom(1);
if (object_exists(obj_potionEnemyTarget)) {
	//destroys attack target if mage death occurs mid attack
	if (distance_to_object(obj_potionEnemyTarget) < 50) {
		instance_destroy(obj_potionEnemyTarget);
	}
}
if (chance == 0) {
	instance_create_layer(x, y, "Instances", obj_healingPotion);
}
