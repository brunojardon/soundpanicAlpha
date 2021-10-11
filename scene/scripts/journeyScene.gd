extends Node2D

func _ready():
	OS.set_window_title("Journey")


func _on_Node2D_ready():
	print("holaannvondvn")
	if Input.is_action_pressed("key-E"):
		print("quiere salir al menu")
		get_tree().change_scene("res://scene/menuScene.tscn")
