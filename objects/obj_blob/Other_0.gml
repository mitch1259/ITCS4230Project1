/// @description Kill player

if bbox_top > room_height {
	show_debug_message("Fell outside room")

	instance_destroy()
}
