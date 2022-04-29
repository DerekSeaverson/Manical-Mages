/// @description On Create
//randomly produces chest with key inside
//chance will have almost 0% chance of not containing key within all chests in the castle
var chance = irandom(6);
if (chance == 3) {
	containsKey = true;
}
depth = 2; //places below player
