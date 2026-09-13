var _inst = instance_place(x, y, deb_Hurt);
if (_inst != noone)
{
	_inst.touched = true;
	zenMeter -= _inst.hurtAmount;
}

if (zenMeter >= 100)
{
	zenTimesFilled += 1;
	zenMeter = 50;
	instance_destroy(deb_Hurt);
	x = 800;
	y = 384;
}