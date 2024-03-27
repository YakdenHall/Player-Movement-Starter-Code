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

if (obj_boss_healthbar.boss_current_health <= 50) {
	hsp = -2;
}

if (bossFacing){
	if (place_meeting(x + hsp, y, obj_wall)) {
		image_xscale *= -1;
		bossFacing = false;
		alarm[1] = 2 * room_speed;
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


function perform_attack() {
    var bullet = instance_create_layer(x - 50, y - 25, "Instances", obj_bullet);
    bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
	bullet.speed = 2
	
}

