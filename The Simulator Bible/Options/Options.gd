extends Node2D

func _ready():
	Global.transitioning_menu = true
	$Return/AnimationPlayer.play_backwards("Slide_Away")
	await($Return/AnimationPlayer.animation_finished)
	Global.transitioning_menu = false
