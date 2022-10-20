/// @description Initialize state and uniform

enum MouseState {
	None,
	Hover,
	Down,
}

mouse_state = MouseState.None

u_brightness = shader_get_uniform(shdr_button, "brightness")
