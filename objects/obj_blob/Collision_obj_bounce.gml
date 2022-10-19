/// @description Insert description here
// You can write your code in this editor



if collided = false {
	collided = true
	temp = max_vspeed
	max_vspeed = jump_height/1.5
	alarm_set(0, 30)
	instance_destroy(other)
	sprite_index = spr_bounceBWalk 
	
}