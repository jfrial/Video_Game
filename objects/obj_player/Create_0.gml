xspd = 0;
yspd = 0;


move_spd = 1;

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check (ord("W"));
down_key = keyboard_check(ord("S"));


sprite[RIGHT] = spr_player_Right1
sprite[UP] = spr_player_up1
sprite[LEFT] = spr_player_left1
sprite[DOWN] = spr_player_down1


face = DOWN;

if keyboard_check(ord("A")) x-=1;
if keyboard_check(ord("D")) x+=1;
if keyboard_check(ord("W")) y-=1;
if keyboard_check(ord("S")) y+=1;