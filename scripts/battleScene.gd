extends Node2D

var proyectil = load("res://scene/props/bala.tscn")
var i=0
var cura=0

func _on_Timer_timeout():
	var new_proyectil = proyectil.instance()
	new_proyectil.position = Vector2(765, 450)
	get_parent().add_child(new_proyectil)

func _ready():
	OS.set_window_title("mecanica") #Coloca el titulo de ventana

func _on_bloque_area_entered(area):
	i=i+1
	cura=cura+1
	print(i)
	if cura==10:
		curar()
	if i==15:
		print("Termina la batalla")

func curar():
	print("Se cura")
	cura=0
