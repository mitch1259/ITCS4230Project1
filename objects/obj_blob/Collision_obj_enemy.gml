/// @description Kill player or use buff power-up

if power_up_state == PowerUpState.Buff {
	instance_destroy(other)

	sprite_index = spr_blob_walk
	power_up_state = PowerUpState.None
} else {
	instance_destroy()
}
