shader_type spatial;
render_mode unshaded, cull_disabled;

uniform float outline_width : hint_range(0.01, 0.2) = 0.05;
uniform vec4 outline_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);

void vertex() {
    VERTEX += NORMAL * outline_width;
}

void fragment() {
    ALBEDO = outline_color.rgb;
}
