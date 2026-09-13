var _c = make_color_hsv(current_time / 100, 255, 255);
draw_healthbar(10, 650, room_width - 10, room_height - 10,
zenMeter, c_black, _c, _c, 0, true, true);