var bullet = instance_create_layer(obj_boss.x, obj_boss.y, "Instances", obj_bullet);
with (bullet)
{
   direction = point_direction(obj_boss.x, obj_boss.y, obj_player.x, obj_player.y);
   speed = 3;
}
alarm[1] = room_speed * 5;