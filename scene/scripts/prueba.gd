extends Node2D

var proyectil= load("res://scene/prueba de proyectil.tscn")

func _on_Timer_timeout(): 
	var new_proyectil = proyectil.instance()
	new_proyectil.position = Vector2(523.067,341.228)
	add_child(new_proyectil)



