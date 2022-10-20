/// @description Insert description here
// You can write your code in this editor

if power_up_state == PowerUpState.None {
	instance_destroy(other)

	alarm[0] = 50
	sprite_index = spr_bounceBWalk
	max_vspeed = jump_height / 1.5

	power_up_state = PowerUpState.Bounce
}