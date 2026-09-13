// Inherit the parent event
event_inherited();

speed = 5;
direction = point_direction(x, y, obj_Player.x, obj_Player.y);
loss = random_range(0.025, 0.05);

touchedList = [];