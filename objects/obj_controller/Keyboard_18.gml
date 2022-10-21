/// @description Go to next level on 'Alt' + 'N'

if keyboard_check_pressed(ord("N")) and room == rm_level1 {
	room_goto_next()
}
