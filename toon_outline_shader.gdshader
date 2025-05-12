shader_type spatial;
render_mode unshaded, cull_disabled;

uniform vec4 albedo_color : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform float outline_width = 0.05;
uniform vec4 outline_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);

void vertex() {
    if (!FRONT_FACING) {
        VERTEX += NORMAL * outline_width;
    }
}

void fragment() {
    if (FRONT_FACING) {
        ALBEDO = albedo_color.rgb;
    } else {
        ALBEDO = outline_color.rgb;
    }
}