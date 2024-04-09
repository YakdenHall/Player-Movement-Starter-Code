with (other) {
	if (!obj_player.is_sliding){
	    obj_player_healthbar.player_current_health -= obj_player_healthbar.player_damage_amount;
    
		obj_player_healthbar.player_healthbar_target_width = (obj_player_healthbar.player_current_health / obj_player_healthbar.player_max_health) * obj_player_healthbar.player_healthbar_width;
		instance_destroy()
	}
}