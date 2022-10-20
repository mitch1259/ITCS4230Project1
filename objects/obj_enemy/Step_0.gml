/// @description Patrol

if !place_meeting(x + ((sprite_width * -1) / 2), y + sprite_height / 2, obj_block) {
	// If going to step off the block
	image_xscale *= -1
	hspeed *= -1
}
