extends Node2D

func _ready():
	OS.set_window_title("Journey")
	if Input.is_action_just_pressed("key-ESC"):
		get_tree().change_scene("res://scene/menuScene.tscn")
