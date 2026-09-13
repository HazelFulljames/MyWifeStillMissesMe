xVel = 0;
yVel = 0;

xVel = lerp(x, destX, 0.1) - x;
yVel = lerp(y, destY, 0.1) - y;

if (place_meeting(x + xVel, y, obj_Player))
{
	obj_Player.x += xVel;
}

if (place_meeting(x, y + yVel, obj_Player))
{
	obj_Player.y += yVel;
}

x += xVel;
y += yVel;