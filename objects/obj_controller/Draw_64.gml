draw_set_font(fnt_one)

switch room {
	case rm_credits:
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(775, 600, 1150, 800, false)
		
		draw_set_colour(c_white)
		draw_set_alpha(1.0)
		draw_set_halign(fa_center)
		draw_text(960, 550, "\nEthan Pinto\nKeith Thornton\nChris Allard\nMitchell Martinez")
		break;

	case rm_controls:
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(275, 575, 1650, 825, false)

		draw_set_colour(c_white)
		draw_set_alpha(1.0)
		draw_set_halign(fa_center)
		draw_text(960, 575, "Pick up as many Slime Kidz as you can on your way to your escape pod!\nPress 'Space' to jump over potholes and enemies.\nWhen you see candies, make sure to jump quickly, they give a jump boost!\nIf you feel the need to restart, press 'R'.\nIf you must exit the game, press 'Escape'.")
		break;

    case rm_level1:
	case rm_level2:
		draw_set_halign(fa_left)
        draw_text(55, 55, "Kidz Saved: " + string(score))
		break;

	case rm_lose:
		draw_set_halign(fa_center)
		draw_text(960, 450, "Kidz Saved: " + string(score))

		draw_set_font(fnt_one_big)
		draw_text(960, 250, "You Lose...")
		break;

	case rm_win:
		draw_set_halign(fa_center)
		draw_text(960, 450, "Kidz Saved: " + string(score))

		draw_set_font(fnt_one_big)
		draw_text(960, 250, "You Win!")
		break;
}
