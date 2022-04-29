/// @description Create
directionValue = irandom(3);
//random alarm timer to randomize direction change
alarm_set(0, irandom_range(2, 5) * room_speed);
