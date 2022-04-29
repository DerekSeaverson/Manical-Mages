/// @description Moving Direction Phase 2/3
directionValue = irandom(7);
if (bossPhase == 2 || bossPhase == 3) {
	alarm_set(3, room_speed * irandom_range(1, 3));
}

