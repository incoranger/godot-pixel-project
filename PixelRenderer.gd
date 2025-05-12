extends Node

@export var target_resolution := Vector2i(320, 180)

func _ready():
	DisplayServer.window_set_size(target_resolution)
	ProjectSettings.set_setting("display/window/stretch/mode", "viewport")
	ProjectSettings.set_setting("display/window/stretch/aspect", "keep")
	ProjectSettings.set_setting("display/window/size/viewport_width", target_resolution.x)
	ProjectSettings.set_setting("display/window/size/viewport_height", target_resolution.y)
	ProjectSettings.set_setting("rendering/anti_aliasing/quality/msaa_3d", 0)
	ProjectSettings.save()
