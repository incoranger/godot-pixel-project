shader_type canvas_item;
render_mode unshaded;

uniform sampler2D screen_texture : source_color;
uniform vec2 pixel_resolution = vec2(320.0, 180.0);
uniform int palette_steps : hint_range(2, 16) = 4;

vec3 posterize(vec3 color, int steps) {
    return floor(color * steps) / float(steps);
}

void fragment() {
    vec2 pixel_size = 1.0 / pixel_resolution;
    vec2 uv = floor(UV / pixel_size) * pixel_size;
    vec3 col = texture(screen_texture, uv).rgb;
    col = posterize(col, palette_steps);
    COLOR = vec4(col, 1.0);
}
