var _toRemove = [];
for (var i = 0; i < array_length(bulletPattern); i++)
{
	
	var _pattern = bulletPattern[i];
	if (_pattern[BP.Condition]())
	{
		if (array_length(_pattern)-1 = BP.InstanceInfo)
		{
			instance_create_layer(_pattern[BP.x], _pattern[BP.y], "Projectiles", _pattern[BP.Object], _pattern[BP.InstanceInfo]);
		}
		else
		{
			instance_create_layer(_pattern[BP.x], _pattern[BP.y], "Projectiles", _pattern[BP.Object]);
		}
	}
	if (_pattern[BP.Remove])
	{
		array_push(_toRemove, i);
	}
	
	
}

for (var i = 0; i < array_length(_toRemove); i++)
{
	array_delete(bulletPattern, _toRemove[i], 1);
}