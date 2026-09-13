

xVel = 0;
yVel = 0;

if (keyboard_check(ord("W")))
{
	yVel -= spd;
}
else if (keyboard_check(ord("S")))
{
	yVel += spd;
}
if (keyboard_check(ord("A")))
{
	xVel -= spd;
}
else if (keyboard_check(ord("D")))
{
	xVel += spd;
}

if (place_meeting(x + xVel, y, obj_Arena))
{
	xVel = 0;
}
if (place_meeting(x, y + yVel, obj_Arena))
{
	yVel = 0;
}

if (xVel != 0 or yVel != 0)
{
	// zenMeter -= 0.03;
	zenFillSpeed = 0.02;
}
else
{
	zenMeter += zenFillSpeed;
	zenFillSpeed = clamp(zenFillSpeed + 0.0025, 0.01, 0.1);
}

y += yVel;
x += xVel;