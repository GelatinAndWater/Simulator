extends Node2D

func _ready():
	Global.transitioning_menu = true
	$Paper1/AnimationPlayer.play_backwards("Slide_Away")
	await($Paper1/AnimationPlayer.animation_finished)
	Global.transitioning_menu = false
