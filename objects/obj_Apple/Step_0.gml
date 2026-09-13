// Inherit the parent event
event_inherited();

if (startBounce <= 0)
{
	if (place_meeting(x + hspeed, y, deb_BadThingIHate))
	{
		hspeed = -hspeed;
		bounces += 1;
		playBounce();
	}
	if (place_meeting(x, y + vspeed, deb_BadThingIHate))
	{
		vspeed = -vspeed;
		bounces += 1;
		playBounce();
	}
}

if (bounces >= 4)
{
	var randSound = floor(random(6));
	if (randSound == 0) {
		audio_play_sound(small_fruit_long_rep_splat_1, 3, false);
	} else if (randSound == 1) {
		audio_play_sound(small_fruit_long_rep_splat_2, 3, false);
	} else if (randSound == 2) {
		audio_play_sound(small_fruit_long_rep_splat_3, 3, false);
	} else if (randSound == 3) {
		audio_play_sound(small_fruit_small_rep_splat_1, 3, false);
	} else if (randSound == 4) {
		audio_play_sound(small_fruit_small_rep_splat_2, 3, false);
	} else {
		audio_play_sound(small_fruit_small_rep_splat_3, 3, false);
	}
	instance_destroy(self);
	
}

function playBounce() {
	var randBounce = floor(random(6));
	if (randBounce == 0) {
		audio_play_sound(stutter_bounce_redux_1, 3, false);
	} else if (randBounce == 1) {
		audio_play_sound(stutter_bounce_redux_2, 3, false);
	} else if (randBounce == 2) {
		audio_play_sound(stutter_bounce_redux_3, 3, false);
	} else {
		audio_play_sound(stutter_bounce_redux_4, 3, false);
	}
}