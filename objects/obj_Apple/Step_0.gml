// Inherit the parent event
event_inherited();

if (startBounce <= 0)
{
	if (place_meeting(x + hspeed, y, deb_BadThingIHate))
	{
		hspeed = -hspeed;
		bounces += 1;
	}
	if (place_meeting(x, y + vspeed, deb_BadThingIHate))
	{
		vspeed = -vspeed;
		bounces += 1;
	}
}

if (bounces >= 4)
{
	instance_destroy(self);
}