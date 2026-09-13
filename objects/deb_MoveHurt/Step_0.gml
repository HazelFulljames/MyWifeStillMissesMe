// Inherit the parent event
event_inherited();

if (speed == 0)
{
	speed = destSpeed;
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
}

if (not place_meeting(x, y, deb_BadThingIHate))
{
	startBounce--;
}