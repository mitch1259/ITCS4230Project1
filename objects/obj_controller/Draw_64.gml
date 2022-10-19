/// @description Insert description here
// You can write your code in this editor



fnt_one = font_add("Exo2-VariableFont_wght.ttf", 20, true, false, 32, 128)
draw_set_font(fnt_one)
draw_set_halign(fa_left)

if room = Intro {
	draw_set_halign(fa_center)
	draw_text(960, 756, "Welcome to Phone Home! To begin, press S\nOnce the game has started, press the W key to jump over potholes and enemies\nWhen you see candies, make sure to jump quickly, they give a jump boost!\nIf you feel the need to restart, press R\nIf you must exit the game, press escape\nFor a score boost, press alt+control\n\nCredits: Ethan Pinto, Keith Thornton, Chris Allard, Mitchell Martinez")
} else {
	draw_text(55, 55, "Kidz Saved: " + string(score))
}