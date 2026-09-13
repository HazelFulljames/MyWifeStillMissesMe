enum BP {
	Condition = 0,
	Object = 1,
	x = 2,
	y = 3,
	Remove = 4,
	InstanceInfo = 5
}

bulletPattern = 
[
	[function() { return true; }, deb_BulletPattern, obj_Wife.x, obj_Wife.y, true, { delay: 10, pattern: [[obj_Obstacle, obj_Wife.x, obj_Wife.y]], count: 10 }],
	[function() { return obj_Wife.frame = 2; }, obj_Apple, obj_Wife.x, obj_Wife.y, false],
	[function() { return obj_Wife.frame = 2; }, obj_Orange, obj_Wife.x, obj_Wife.y, false],
	[function() { return obj_Wife.frame = 2; }, obj_Watermelon, obj_Wife.x, obj_Wife.y, false],
	[function() { return obj_Wife.frame = 2; }, deb_BulletPattern, obj_Wife.x, obj_Wife.y, false, { delay: 1, pattern: [[obj_Bullet, obj_Wife.x, obj_Wife.y]], count: 6 }],
	[function() { return obj_Wife.frame = 3; }, obj_Gun, obj_Wife.x, obj_Wife.y, false]
]