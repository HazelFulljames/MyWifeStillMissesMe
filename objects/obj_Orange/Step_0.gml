// Inherit the parent event
event_inherited();

if (place_meeting(x, y, deb_BadThingIHate) and startBounce <= 0)
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