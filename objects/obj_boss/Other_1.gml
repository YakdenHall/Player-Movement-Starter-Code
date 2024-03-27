/// @description keep boss in room
if(bbox_left < 0 or bbox_right > room_width + (obj_wall)){
	x = clamp(x, 0+sprite_xoffset, room_width-sprite_xoffset);
	hspeed = hspeed * -1;	
	image_xscale = -1;
}
