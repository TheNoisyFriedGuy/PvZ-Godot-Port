extends Node2D

var is_opened = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DisplayServer.window_set_title("Plants vs Zombies")
	DisplayServer.window_set_size(Vector2(1066,600))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_adventure_mouse_entered() -> void:
	$MenuLayer/Adventure_HighLight.show()
func _on_adventure_mouse_exited() -> void:
	$MenuLayer/Adventure_HighLight.hide()
func _on_more_ways_mouse_entered() -> void:
	$MenuLayer/MoreWays_HighLight.show()
func _on_more_ways_mouse_exited() -> void:
	$MenuLayer/MoreWays_HighLight.hide()
func _on_zomb_blink_time_timeout() -> void:
	$MenuLayer/Zomb_Blink.play()
func _on_profile_change_mouse_entered() -> void:
	$MenuLayer/woodsign1_highlight.show()
func _on_profile_change_mouse_exited() -> void:
	$MenuLayer/woodsign1_highlight.hide()
func _on_markers_mouse_entered() -> void:
	$MenuLayer/woodsign2_highlight.show()
func _on_markers_mouse_exited() -> void:
	$MenuLayer/woodsign2_highlight.hide()
func _on_options_pressed() -> void:
	$OptionPropt.show()
func _on_option_exit_pressed() -> void:
	$OptionPropt.hide()
func _on_acheesements_mouse_entered() -> void:
	$MenuLayer/AchievementsPedestalPress.show()
func _on_acheesements_mouse_exited() -> void:
	$MenuLayer/AchievementsPedestalPress.hide()
func _on_quit_pressed() -> void:
	get_tree().quit()
func _on_hud_toggle_pressed() -> void:
	$MenuLayer/woodsign1.show()
	$MenuLayer/profile_change.show()
	$MenuLayer/markers.show()
	$MenuLayer/Label2.show()
	$MenuLayer/woodsign2.show()
	$MenuLayer/Label3.show()
	$MenuLayer/rollin.play()
	$MenuLayer/hud_toggle.hide()
func _on_bonus_button_mouse_entered() -> void:
	$MenuLayer/BonusPressed.show()
func _on_bonus_button_mouse_exited() -> void:
	$MenuLayer/BonusPressed.hide()
func _on_zg_mouse_entered() -> void:
	$MenuLayer/SelectorScreenZenGardenHighlight.show()
func _on_zg_mouse_exited() -> void:
	$MenuLayer/SelectorScreenZenGardenHighlight.hide()
func _input(InputEvent):
	if Input.is_action_pressed("Full"):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		DisplayServer.window_set_size(Vector2(1280, 720))
func _on_adventure_pressed() -> void:
	$MenuLayer/adventuretimer.start()
	$MenuLayer/zombierise.play("rise")
	$MenuLayer/laughtimer.start()
	$MenuLayer/dirt.play()
	$MenuLayer/lose.play()
	$music_Menu.stop()
func _on_laughtimer_timeout() -> void:
	$MenuLayer/laugh.play()
func _on_more_ways_pressed() -> void:
	$MenuLayer/enterandexit.play("enter")
func _on_acheesementsexit_pressed() -> void:
	$MenuLayer/enterandexit.play("exit")
func _on_acheesementsexit_mouse_entered() -> void:
	$MenuLayer/MinigameSubLayer/acheesementshighlight.show()
func _on_acheesementsexit_mouse_exited() -> void:
	$MenuLayer/MinigameSubLayer/acheesementshighlight.hide()
func _on_adventuretimer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/adventure_1.tscn")
