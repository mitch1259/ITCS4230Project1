enum LocationState {
	Ground,
	Air,
}

/// @function  set_location_state(state)
/// @description  Transition between location states
/// @param  {real}  state  LocationState
function set_location_state(state) {
	switch state {
		case LocationState.Ground:
			vspeed = 0
			gravity = 0
			friction = friction_force
			location_state = LocationState.Ground
			break;
		case LocationState.Air:
			gravity = gravity_force
			friction = 0
			location_state = LocationState.Air
			break;
	}
}

/// @function  vertical_collision()
/// @description  Checks for and fixes location on vertical collisions
function vertical_collision() {
	var collision = instance_place(x , y + vspeed, obj_block)
	if collision != noone {
		if vspeed > 0 {
			show_debug_message("Collided with floor")

			y = collision.bbox_top - (bbox_bottom - y)
			set_location_state(LocationState.Ground)
		} else {
			show_debug_message("Collided with ceiling")

			y = collision.bbox_bottom - (bbox_top - y)
			vspeed = 0
		}
	}
}

/// @function  horizontal_collision()
/// @description  Checks for and fixes location on horizontal collisions
function horizontal_collision() {
	var collision = instance_place(x + hspeed, y, obj_block)

	if collision != noone {
		if hspeed > 0 {
			show_debug_message("Collided with right wall")

			x = collision.bbox_left - (bbox_right - x)
		} else {
			show_debug_message("Collided with left wall")

			x = collision.bbox_right - (bbox_left - x)
		}
		hspeed = 0
	}
}
