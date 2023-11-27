extends Sprite2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("Start Button has been pressed")
			Global.transitioning_menu = true
			$AnimationPlayer.play("Slide_Away")
			await($AnimationPlayer.animation_finished)
			Global.transitioning_menu = false
			get_tree().change_scene_to_file("res://Scenes/Hunger_games.tscn")


func _on_start_area_mouse_entered():
	if !Global.transitioning_menu:
		$AnimationPlayer.play("Start_Button")


func _on_start_area_mouse_exited():
	if !Global.transitioning_menu:
		$AnimationPlayer.play_backwards("Start_Button")
