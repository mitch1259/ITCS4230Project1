/// @description Go to start room and reset score

if room == rm_lose or room == rm_win {
	score = 0
}

room_goto(rm_start)
