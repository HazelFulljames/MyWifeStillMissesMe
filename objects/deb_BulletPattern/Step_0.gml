delay -= 1;
if (delay <= 0)
{
	delay = delayMax;
	instance_create_layer(
		pat[0][1], 
		pat[0][2], "Projectiles",
		pat[0][0]);
	array_delete(pat, 0, 1);
}
if (array_length(pat) <= 0)
{
	show_debug_message("ded")
	instance_destroy(self);
}