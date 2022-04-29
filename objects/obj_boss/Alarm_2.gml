/// @description Moving Direction Phase 1
directionValue = irandom(3);
//resets alarm if boss is in phase 1
if (bossPhase == 1) {
	alarm_set(2, room_speed * irandom_range(2, 4));
}
