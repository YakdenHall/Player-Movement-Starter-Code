vsp += grv;
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp), y, obj_wall))
	{
		 x = x + sign(hsp);
	}
	hsp *= -1;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
if (teleport_complete == false){
	if (obj_boss_healthbar.boss_current_health <= 50) {
		instance_destroy(obj_boss);
		instance_create_layer(x, y, "Instances", obj_boss_teleport)
		obj_control.alarm[1] = 1 * room_speed;
	}
}




if (!is_attacking) {
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
    
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        direction += 180;
    }
}


if (attackTimer <= 0) {
    perform_attack();
    attackTimer = attackCooldown;
} else {
    attackTimer -= 1;
}

if (facingright == false){
	function perform_attack() {
	    var bullet = instance_create_layer(x , y - 25, "Instances", obj_bullet);
	    bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
		bullet.speed = 2
	
	}
}

if (!is_attacking) {
    // Check if boss's health is at 50% or below
    if (obj_boss_healthbar.boss_current_health <= 50) {
        // Set player damage multiplier to 0 (no damage)
        obj_boss_healthbar.damage = 0;
        
        // Start a cooldown timer for 10 seconds
        alarm[0] = room_speed * 10;
    }
}


if (obj_boss_healthbar.boss_current_health <= 50 && !ability_triggered_test) {
    // Mark the ability as triggered
    ability_triggered_test = true;
    
    // Start an alarm to create the hitbox after 5 seconds
    alarm[2] = room_speed * 5;
}

if (obj_boss_healthbar.boss_current_health <= 50 && !attack_initiated) {
    // Mark the attack as initiated
    attack_initiated = true;
    
    // Start an alarm to create the projectile after a delay (e.g., 1 second)
    alarm[4] = room_speed * 1; // Adjust delay as needed
}
