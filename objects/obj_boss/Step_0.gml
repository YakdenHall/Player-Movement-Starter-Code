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

alarm[1] = room_speed * 5;
