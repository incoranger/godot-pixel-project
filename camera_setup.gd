@tool
extends Node

@export var target_resolution := Vector2i(320, 180)

func _ready():
	var camera = get_node_or_null("/root/Main/GameViewport/PixelCamera/PixelCamera")
	if camera:
		camera.orthogonal = true
		camera.size = target_resolution.y / 2
		camera.keep_aspect = Camera3D.KEEP_WIDTH

	ProjectSettings.set_setting("display/window/stretch/mode", "viewport")
	ProjectSettings.set_setting("display/window/stretch/aspect", "keep")
	ProjectSettings.set_setting("display/window/size/viewport_width", target_resolution.x)
	ProjectSettings.set_setting("display/window/size/viewport_height", target_resolution.y)
	ProjectSettings.set_setting("rendering/anti_aliasing/quality/msaa_3d", 0)
	ProjectSettings.save()
