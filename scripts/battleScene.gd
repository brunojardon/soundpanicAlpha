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
	print(global.salud)
	if cura==10:
		global.salud=global.salud+10
		print("se cura")
		cura=0
	if i==1062:
		print("Termina la batalla")
		get_tree().change_scene("res://scene/mains/journeyScene.tscn")
	if global.salud > 100:
		global.salud=100


