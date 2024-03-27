with (other) {
    // Decrease boss health
    boss_current_health -= damage_amount;
    
    // Update target width of the health bar
    healthbar_target_width = (boss_current_health / boss_max_health) * healthbar_width;
	instance_destroy()
}