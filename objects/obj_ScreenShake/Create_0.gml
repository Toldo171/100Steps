//Screenshake
shake_length = 10;
shake_range = 1;
alarm[0] = -1;

//Zoom to the beat
zoom_range = 4;
zoom_duration = 2;
zoom_tempo = (game_get_speed(gamespeed_fps) / (music1_BPM / 60)* 2) - 1;
//zoom_is_reset is here to make sure that zoom does not interfere with Screenshake
zoom_is_reset = false;
alarm[1] = -1;

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);