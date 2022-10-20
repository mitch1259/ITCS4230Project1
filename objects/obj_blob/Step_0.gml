/// @description Do player action

if location_state == LocationState.Ground {
	horizontal_collision()

	if keyboard_check(vk_space) {
		// If jumping
		vspeed = -jump_height
		set_location_state(LocationState.Air)
	} else if !place_meeting(x, y + 1, obj_block) {
		// If no block under blob
		set_location_state(LocationState.Air)
	}
} else if location_state == LocationState.Air {
	// Stop blob from falling too fast
	if abs(vspeed) > max_vspeed {
		vspeed = max_vspeed * sign(vspeed)
	}

	vertical_collision()

	if !horizontal_collision() {
		// If no block in front of player
		hspeed = hsp
	}
} else if location_state = LocationState.SpaceBeam {
	// Increase image scale from 0.2 to 1.0 over 64 frames
	image_yscale += 0.80 / 64
	image_xscale += 0.80 / 64

	if vertical_collision() {
		image_yscale = 1
		image_xscale = 1
		vertical_collision()
		set_location_state(LocationState.Ground)
	}
}
