var _inst = instance_create_layer(x, y, obj_Bullet);
_inst.speed = 5;
_inst.direction = point_direction(x, y, obj_Player.x, obj_Player.y);