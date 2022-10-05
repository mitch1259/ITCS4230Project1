/// @description Do player action

if location_state == LocationState.Ground {
	// Horizontal movement
	var v_move = int64(keyboard_check(ord("D"))) - int64(keyboard_check(ord("A")))
	hspeed = clamp(hspeed + v_move * walk_speed, -max_hspeed, max_hspeed)

	horizontal_collision()

	if keyboard_check(ord("W")) {
		vspeed = -jump_height
		set_location_state(LocationState.Air)
	} else if !place_meeting(x, y + 1, obj_block) {
		set_location_state(LocationState.Air)
	}
} else if location_state == LocationState.Air {
	if abs(vspeed) > max_vspeed {
		vspeed = max_vspeed * sign(vspeed)
	}

	vertical_collision()
	horizontal_collision()
}
