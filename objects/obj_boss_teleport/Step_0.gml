function moveBossToOppositeSide() {
    x = 63
	y = 206
    
    
    // Reset speed (if needed)
    speed = 0; // Adjust the speed as needed
	instance_destroy(obj_boss_teleport);
	instance_create_layer(x, y, "Instances", obj_boss_teleport2)
	obj_boss_teleport2.image_xscale = -1;
	obj_boss_teleport2.alarm[0] = .5 * room_speed;
}