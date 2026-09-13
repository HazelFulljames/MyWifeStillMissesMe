

xVel = 0;
yVel = 0;

if (keyboard_check(ord("W")))
{
	yVel -= spd;
	global.stepCounter++;
	
}
else if (keyboard_check(ord("S")))
{
	yVel += spd;
	global.stepCounter++;
}
if (keyboard_check(ord("A")))
{
	xVel -= spd;
	global.stepCounter++;
}
else if (keyboard_check(ord("D")))
{
	xVel += spd;
	global.stepCounter++;
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


	
if (global.stepCounter >= 0) {
	var randomStep = floor(random(5));
	switch (randomStep) {
		case 0:
			audio_play_sound(footstep1, 2, false);
			break;
		case 1:
			audio_play_sound(footstep2, 2, false);
			break;
		case 2:
			audio_play_sound(footstep3, 2, false);
			break;
		case 3:
			audio_play_sound(footstep4, 2, false);
			break;
		default:
			audio_play_sound(footstep5, 2, false);
			break;
	}
	global.stepCounter = -20;
}

y += yVel;
x += xVel;