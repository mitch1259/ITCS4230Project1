/// @description Remove powerup

if power_up_state == PowerUpState.Bounce {
	max_vspeed = default_max_vspeed
} else if power_up_state == PowerUpState.Buff {
	//health = temp
}

sprite_index = spr_blob_walk
power_up_state = PowerUpState.None
