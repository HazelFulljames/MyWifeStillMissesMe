// Inherit the parent event
var _inst = instance_place(x,  y, deb_MoveHurt);
if (_inst != noone and not array_contains(touchedList, _inst))
{
	_inst.direction = point_direction(x,  y, obj_Player.x, obj_Player.y);
	array_push(touchedList, _inst);
	var randRedirect = floor(random(3));
	if (randRedirect == 0) {
		audio_play_sound(melodica_do_do_doop_redux_gun_redirect_1, 4, false);
	} else if (randRedirect == 1) {
		audio_play_sound(melodica_do_do_doop_redux_gun_redirect_2, 4, false);
	} else {
		audio_play_sound(melodica_do_do_doop_redux_gun_redirect_3, 4, false);
	}
}

if (speed > 0)
{
	speed -= loss
}
if (speed < 0)
{
	speed = 0;
}


