extends Sprite2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("Return Button has been pressed")
			Global.transitioning_menu = true
			$AnimationPlayer.play("Slide_Away")
			await($AnimationPlayer.animation_finished)
			Global.transitioning_menu = false
			get_tree().change_scene_to_file("res://Main Menu/Menu.tscn")

func _on_return_button_mouse_entered():
	if !Global.transitioning_menu:
		$AnimationPlayer.play("Return_Button")

func _on_return_button_mouse_exited():
	if !Global.transitioning_menu:
		$AnimationPlayer.play_backwards("Return_Button")
