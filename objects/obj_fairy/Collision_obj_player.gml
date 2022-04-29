/// @description Player In Range
//makes sure player is within certain range(and below) of fairy
if (!doneTalking && y < obj_player.y && abs(obj_player.x - x) < 2 && canTalk) {
	//makes fairy appear further away in case player collides with fairy
	depth = 1;
	isPlayer = true;
	obj_player.isTalking = true;
}

