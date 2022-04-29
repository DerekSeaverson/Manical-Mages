/// @description Opens Chest
if (isPlayer && !isOpened && !obj_bossDoor.bossCanEnter) {
	isOpened = true;
	if (containsKey) {
		obj_bossDoor.bossCanEnter = true;
	}
}
