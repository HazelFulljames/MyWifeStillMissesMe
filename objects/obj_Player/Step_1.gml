var _inst = instance_place(x, y, deb_Hurt);

if (_inst != noone)
{
	_inst.touched = true;
	zenMeter -= _inst.hurtAmount;
	
	var randHurt = floor(random(5));
	if (randHurt == 0) {
		audio_play_sound(slight_pitch_down_ouch,  10, false);
	} else if (randHurt = 1) {
		audio_play_sound(slight_pitch_up_ouch,  10, false);
	} else if (randHurt = 1) {
		audio_play_sound(triple_high_ouch,  10, false);
	} else if (randHurt = 1) {
		audio_play_sound(triple_low_ouch_1,  10, false);
	} else {
		audio_play_sound(triple_low_ouch_2,  10, false);
	}
}

if (zenMeter >= 100)
{
	zenTimesFilled += 1;
	zenMeter = 50;
	instance_destroy(deb_Hurt);
	x = 800;
	y = 384;
}