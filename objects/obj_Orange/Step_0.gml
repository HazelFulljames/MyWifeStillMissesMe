// Inherit the parent event
event_inherited();

if (place_meeting(x, y, deb_BadThingIHate) and startBounce <= 0)
{
	instance_destroy(self);
}