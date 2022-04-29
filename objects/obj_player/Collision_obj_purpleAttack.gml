/// @description Purple Mage Attack
if (canTakeDamage) {
	playerHealth -= 2;
	canTakeDamage = false;
	alarm_set(1, 3 * room_speed);
}

