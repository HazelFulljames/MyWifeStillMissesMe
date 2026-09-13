image_index = irandom_range(0, 2);
image_xscale = irandom_range(2, 5);
image_yscale = irandom_range(2, 5);
destX = irandom_range(256, 1312 - (sprite_get_width(sprite_index) * image_xscale));
destY = irandom_range(160, 640 - (sprite_get_height(sprite_index) * image_yscale));

depth = 150

xVel = 0;
yVel = 0;

var randSound = floor(random(3));
if (randSound = 0) {
	audio_play_sound(clunky_thunk_redux_furniture_place_1, 1, false);
} else if (randSound = 1) {
	audio_play_sound(clunky_thunk_redux_furniture_place_2, 1, false);
} else {
	audio_play_sound(clunky_thunk_redux_furniture_place_3, 1, false);
}