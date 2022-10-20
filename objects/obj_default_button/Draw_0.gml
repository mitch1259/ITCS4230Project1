/// @description Shader

switch mouse_state {
	case MouseState.Hover:
		shader_set(shdr_button)
		shader_set_uniform_f(u_brightness, 0.15)
		draw_self()
		shader_reset()
		break;
	
	case MouseState.Down:
		shader_set(shdr_button)
		shader_set_uniform_f(u_brightness, -0.15)
		draw_self()
		shader_reset()
		break;
	
	case MouseState.None:
		draw_self()
		break;
}
