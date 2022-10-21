/// @description Kill player

if bbox_top > room_height {
	show_debug_message("Fell outside room")

	instance_destroy()
}

if bbox_left > room_width {
	show_debug_message("Walked outside room")
	room_goto(rm_level1_alt)
}