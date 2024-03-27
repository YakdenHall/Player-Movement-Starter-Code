with (other) {
    // Decrease boss health
    obj_boss_healthbar.boss_current_health -= obj_boss_healthbar.damage_amount;
    
    // Update target width of the health bar
	obj_boss_healthbar.healthbar_target_width = (obj_boss_healthbar.boss_current_health / obj_boss_healthbar.boss_max_health) * obj_boss_healthbar.healthbar_width;
	instance_destroy()
}