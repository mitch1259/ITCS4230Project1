//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float brightness;

void main()
{
	vec4 tex_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	gl_FragColor = vec4(tex_color.rgb + brightness, tex_color.a);
}
