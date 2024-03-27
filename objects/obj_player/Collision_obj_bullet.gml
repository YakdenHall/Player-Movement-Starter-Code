with (other) {
    // Decrease boss health
    obj_player_healthbar.player_current_health -= obj_player_healthbar.player_damage_amount;
    
    // Update target width of the health bar
	obj_player_healthbar.player_healthbar_target_width = (obj_player_healthbar.player_current_health / obj_player_healthbar.player_max_health) * obj_player_healthbar.player_healthbar_width;
	instance_destroy()
}