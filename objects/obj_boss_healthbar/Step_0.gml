if (boss_current_health <= 0){
	instance_destroy()
	instance_destroy(obj_bullet)
	instance_destroy(obj_boss_hitbox)
	image_index = spr_boss_death;
	alarm[10] = 8 * room_speed;
}