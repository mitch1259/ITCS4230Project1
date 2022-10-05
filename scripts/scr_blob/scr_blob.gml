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
			location_state = LocationState.Ground
			break;
		case LocationState.Air:
			gravity = gravity_force
			location_state = LocationState.Air
			break;
	}
}

/// @function  vertical_collision()
/// @description  Checks for and fixes `y` on vertical collisions
/// @return  {bool}  Did collide
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

		return true
	}

	return false
}

/// @function  horizontal_collision()
/// @description  Checks for and fixes `x` on horizontal collisions
/// @return  {bool}  Did collide
function horizontal_collision() {
	var collision = instance_place(x + hsp, y, obj_block)

	if collision != noone {
		if hspeed != 0 {
			show_debug_message("Collided with wall")

			x = collision.bbox_left - (bbox_right - x)
			hspeed = 0
		}

		return true
	}

	return false
}
