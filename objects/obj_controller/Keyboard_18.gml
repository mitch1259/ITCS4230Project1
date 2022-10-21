/// @description Cheat codes

// Press 'Alt' + 'Ctrl' to increase your score by 1
if keyboard_check_pressed(vk_control) {
	score += 1
}

// Press 'Alt' + 'N' to go to the next level
if keyboard_check_pressed(ord("N")) and room == rm_level1 {
	room_goto_next()
}
