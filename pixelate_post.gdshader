shader_type canvas_item;

uniform sampler2D screen_texture : source_color;

void fragment() {
    vec2 pixel_size = vec2(1.0 / 320.0, 1.0 / 180.0); // 解像度に合わせる
    vec2 uv = floor(UV / pixel_size) * pixel_size;
    COLOR = texture(screen_texture, uv);
}