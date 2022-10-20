/// @description Insert description here
// You can write your code in this editor

if power_up_state == PowerUpState.None {
	instance_destroy(other)

	alarm[0] = 100
	sprite_index = spr_buffBWalk
	//health = infinity

	power_up_state = PowerUpState.Buff
}
