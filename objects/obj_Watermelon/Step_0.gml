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
	var randSound = floor(random(4));
	if (randSound == 0) {
		audio_play_sound(watermelon_rep_colapse, 3, false);
	} else if (randSound == 1) {
		audio_play_sound(watermelon_rep_colapse_2, 3, false);
	} else {
		audio_play_sound(watermelon_rep_colapse_3, 3, false);
	}
	instance_destroy(self);
}