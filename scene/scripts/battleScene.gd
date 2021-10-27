extends Node2D

var proyectil = preload("res://scene/prueba de proyectil.tscn")

func _on_Timer_timeout():
	var newProyectil = proyectil.instance()
	newProyectil.position = Vector2(475.527,479.116)
	add_child(newProyectil)

func _ready():
	OS.set_window_title("Mecanica") #Coloca el titulo de ventana


