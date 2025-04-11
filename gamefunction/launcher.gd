extends Node2D

var fadeout = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DisplayServer.window_set_size(Vector2(1066,600))
	DisplayServer.window_set_title("Game Launcher")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	if fadeout == 1: #script proceeds to lower volume if button = 1
		$AudioStreamPlayer2D.volume_db -= 1
	else:
		$AudioStreamPlayer2D.volume_db = 1


func _on_button_pressed() -> void:
	$intro.play("fade")
	fadeout = 1
	$waiter.start()
	$fanfare.play()
	$game/gamestart.hide()


func _on_waiter_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/nodescene_loading.tscn")


func _on_redirect_pressed() -> void:
	OS.shell_open("https://discord.gg/dt3GyWn7E3")
