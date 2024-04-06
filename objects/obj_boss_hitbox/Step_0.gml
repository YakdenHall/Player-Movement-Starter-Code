var move_speed = 3; // Adjust speed as needed
x += move_speed; // Move horizontally to the right

// Collision check with the player
if (place_meeting(x, y, obj_player) and !obj_player.is_sliding) {
    // Hitbox collided with the player, decrease player's health to 0
    obj_player_healthbar.player_current_health = 0;
    
    // Destroy the player object
    with (obj_player) {
        instance_destroy();
    }
    
    // Update the player's health bar
    if (obj_player_healthbar.player_current_health == 0) {
        // Get the health bar object
		room_restart()
    }
    
    // Destroy the hitbox
    instance_destroy();
}

