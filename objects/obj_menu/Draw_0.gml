draw_set_font(global.font_main);

height = op_border*2 + string_height(option[0, 0]) + (op_length-1)*op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 -width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 -height/2;

//menu background
draw_sprite_ext (sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);


//Settings
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_length; i++)
	{
	var _c = c_white;
	if pos == i {_c = c_yellow};
	draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
	}