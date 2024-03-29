xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key ) * move_spd;

//movement
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

if keyboard_check(ord("A")) x-=1;
if keyboard_check(ord("D")) x+=1;
if keyboard_check(ord("W")) y-=1;
if keyboard_check(ord("S")) y+=1;



//sprite animations
mask_index = sprite [DOWN];
if yspd == 0
	{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
	}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
	{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
	}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};



//collisions
if place_meeting(x + xspd, y, obj_wall) == true
    {
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_wall) == true
    {
	yspd = 0;
	}


x += xspd;
y += yspd;




if xspd == 0 && yspd == 0
	{
	image_index = 0
	}