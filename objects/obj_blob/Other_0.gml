/// @description Kill player or go to next room

if bbox_top > room_height {
	show_debug_message("Fell outside room")

	instance_destroy()
} else if bbox_left > room_width {
	show_debug_message("Walked outside room")
	room_goto_next()
}