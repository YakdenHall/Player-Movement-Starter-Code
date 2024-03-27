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

// Step Event of obj_boss
// Movement
if (!is_attacking) {
    // Move in a pattern (you can adjust this based on your boss's movement behavior)
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
    
    // Reverse direction when hitting the room bounds
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        direction += 180;
    }
}

// Attack Behavior
if (attackTimer <= 0) {
    // Perform an attack
    perform_attack();
    attackTimer = attackCooldown;
} else {
    attackTimer -= 1;
}

// Attack function
// Define your boss's attack behavior here
function perform_attack() {
    // For example, spawn a projectile
    var bullet = instance_create_layer(x - 50, y - 25, "Instances", obj_bullet);
    bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
	bullet.speed = 2
	
}

