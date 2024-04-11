grv=1;
vsp=0;
hsp=0;
is_attacking = false;
attackCooldown = room_speed * 2; 
attackTimer = attackCooldown;
direction = 0;
facingright = false;
hit_wall_left = false;
hit_wall_below = false;
teleport_complete = false;
ability_triggered = false; 
ability_cooldown = room_speed * 8; 
ability_triggered_test = false;
start_attack = false;
attack_initiated = false;
flip_bullet_sprite = function() {
    with (obj_bullet) {
        if (image_xscale != -1) {
            image_xscale *= -1; // Flip the sprite horizontally
        }
    }
}
phase_2 = false;