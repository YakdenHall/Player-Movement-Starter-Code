instance_destroy(obj_boss_teleport2);
instance_create_layer(x, y, "Instances", obj_boss)
obj_boss.teleport_complete = true;
obj_boss.image_xscale = -1;