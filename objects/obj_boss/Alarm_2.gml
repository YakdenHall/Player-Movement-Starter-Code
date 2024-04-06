var hitbox_instance = instance_create_layer(x, y, "Instances", obj_boss_hitbox);

// Set hitbox direction towards the player
var player_obj = instance_nearest(x, y, obj_player); // Assuming obj_player is the player object
if (player_obj) {
    var direction_to_player = point_direction(x, y, player_obj.x, player_obj.y);
    hitbox_instance.direction = direction_to_player;
}

// Start another alarm to create the hitbox every 8 seconds
alarm[2] = room_speed * 8;
