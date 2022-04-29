/// @description Create
directionValue = irandom(3); //random direction on create
//random alarm timer to randomize direction change
alarm_set(0, irandom_range(1, 3) * room_speed);
