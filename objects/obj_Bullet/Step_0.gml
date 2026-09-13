// Inherit the parent event
event_inherited();

if (place_meeting(x, y, deb_BadThingIHate) and startBounce <= 0)
{
	instance_destroy(self);
}

var _inst = instance_place(x, y, obj_Gun);
if (_inst != noone)
{
	instance_destroy(_inst);
	instance_destroy(self);
}