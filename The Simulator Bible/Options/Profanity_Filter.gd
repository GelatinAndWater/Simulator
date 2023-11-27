extends Sprite2D

func _on_check_box_pressed():
	if Global.Profanity:
		Global.Profanity = false
		print(Global.Profanity)
	else:
		Global.Profanity = true
		print(Global.Profanity)
