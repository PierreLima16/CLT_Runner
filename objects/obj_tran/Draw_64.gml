var _x2 = camera_get_view_width(view_camera[0]) * 2;
var _y2 = camera_get_view_height(view_camera[0]) * 2;

draw_set_alpha(alpha);
draw_set_colour(c_black);

draw_rectangle(-50, -50, _x2, _y2, false);

draw_set_alpha(1);
draw_set_colour(c_white);