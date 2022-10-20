/// @description Remove powerup

if power_up_state == PowerUpState.Bounce {
	max_vspeed = default_max_vspeed
}

sprite_index = spr_blob_walk
power_up_state = PowerUpState.None
