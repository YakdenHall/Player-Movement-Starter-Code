var move_speed = 3; // Adjust speed as needed
x += move_speed; // Move horizontally to the right

// Collision check with the player
if (place_meeting(x, y, obj_player)) {
    // Hitbox collided with the player, decrease player's health to 0
    obj_player_healthbar.player_current_health = 0;
    
    // Destroy the player object
    with (obj_player) {
        instance_destroy();
    }
    
    // Update the player's health bar
    if (instance_exists(obj_player_healthbar)) {
        // Get the health bar object
        instance_destroy(obj_player_healthbar)
		room_goto(rm_game_over)
		obj_game_over.alarm[0] = room_speed * 2	
    }
    
    // Destroy the hitbox
    instance_destroy();
}

