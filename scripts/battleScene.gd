extends Node2D

var proyectil = load("res://scene/props/bala.tscn")

func _on_Timer_timeout():
	var new_proyectil = proyectil.instance()
	new_proyectil.position = Vector2(465, 450)
	get_parent().add_child(new_proyectil)

func _ready():
	OS.set_window_title("mecanica") #Coloca el titulo de ventana
