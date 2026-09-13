// Inherit the parent event
var _inst = instance_place(x,  y, deb_MoveHurt);
if (_inst != noone and not array_contains(touchedList, _inst))
{
	_inst.direction = point_direction(x,  y, obj_Player.x, obj_Player.y);
	array_push(touchedList, _inst);
}

if (speed > 0)
{
	speed -= loss
}
if (speed < 0)
{
	speed = 0;
}


