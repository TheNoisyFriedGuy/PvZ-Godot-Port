extends Node2D

@onready var ddm = $OptionButton

func _ready():
	pass
	
func _on_option_button_item_selected(index: int) -> void:
	var current = index
	
	if current == 0:
		DisplayServer.window_set_size(Vector2(1066,600))
	if current == 1:
		DisplayServer.window_set_size(Vector2(854,480))
	if current == 2:
		DisplayServer.window_set_size(Vector2(640,360))
	if current == 3:
		DisplayServer.window_set_size(Vector2(1280,720))
	if current == 4:
		DisplayServer.window_set_size(Vector2(1366,768))
