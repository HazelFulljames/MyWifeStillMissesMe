if (!variable_instance_exists(id, "delay"))
{
	delay = 1;
}

if (!variable_instance_exists(id, "pattern"))
{
	pattern = [];
	pat = pattern;
}
else 
{
	pat = [];
	array_copy(pat, 0, pattern, 0, array_length(pattern));
}

if (!variable_instance_exists(id, "count"))
{
	count = 0;
}
else
{
	var _pattern = [];
	array_copy(_pattern, 0, pat, 0, array_length(pat));
	for (var i = 0; i < count; i++)
	{
		array_copy(pat, array_length(pat), _pattern, 0, array_length(_pattern));
	}
}

show_debug_message(array_length(pat))

delayMax = delay;