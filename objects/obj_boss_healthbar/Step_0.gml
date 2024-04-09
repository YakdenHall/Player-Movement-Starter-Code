if (boss_current_health <= 0){
	instance_destroy(obj_bullet)
	instance_destroy(obj_boss_hitbox)
	instance_create_layer(obj_boss.x, obj_boss.y, "Instances", obj_boss_death)
	obj_boss_death.image_xscale = -1;
	instance_destroy(obj_boss)
	instance_destroy(obj_boss_healthbar)
	obj_control.alarm[2] = room_speed * 9;
}