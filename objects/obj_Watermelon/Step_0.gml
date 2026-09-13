// Inherit the parent event
event_inherited();

if (place_meeting(x, y, deb_BadThingIHate) and startBounce <= 0)
{
	image_xscale = 4;
	image_yscale = 4;
	if (image_index < 1)
	{
		image_index = 1;
	}
	
	speed = 0.00001;
	image_speed = 1
}

if (image_index >= 1.1)
{
	instance_destroy(self);
}