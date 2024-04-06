var projectile_instance = instance_create_layer(x, y, "Instances", obj_boss_projectile);

// Set projectile speed and direction
projectile_instance.speed = 6; // Adjust speed as needed
projectile_instance.direction = point_direction(x, y, obj_player.x, obj_player.y);

// Start another alarm to reset the attack initiation after a delay (e.g., 1 second)
alarm[5] = room_speed * 1; // Adjust delay as needed