//movement
// right_key 	= keyboard_check(vk_right);
// left_key 	= keyboard_check(vk_left);
// up_key 		= keyboard_check(vk_up);
// down_key 	= keyboard_check(vk_down);

right_key 	= keyboard_check(ord("D"));
left_key 	= keyboard_check(ord("A"));
up_key 		= keyboard_check(ord("W"));
down_key 	= keyboard_check(ord("S"));

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key ) * move_spd;

//collisions
if place_meeting(x + xspd, y, obj_wall) {
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) {
	yspd = 0;
}

x += xspd;
y += yspd;

if xspd == 0 && yspd == 0 {
	image_index = 0
}
