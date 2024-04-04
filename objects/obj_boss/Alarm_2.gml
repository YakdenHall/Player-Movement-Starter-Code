var hitbox_instance = instance_create_layer(x, y, "Instances", obj_boss_hitbox);

// Set hitbox direction to move horizontally to the right
hitbox_instance.direction = 0; // Right direction

alarm[2] = ability_cooldown;