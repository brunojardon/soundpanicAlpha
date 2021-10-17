extends Area2D


#var dentro = false #Definirá que el proyectil esta dentro o no del area
var Movimiento = Vector2()
var entro = false

func _process(delta):
	if Input.is_action_just_pressed("key-E"):
		Movimiento.x -= 75
	position += Movimiento * delta

func _on_aro_area_entered(): 
	entro = true
	if entro == true:
		print("entro = ", entro)

func _on_aro_area_exited():
	entro = false

func _physics_process(delta):
	if Input.is_action_pressed("key-A"):
		if entro == true:
			print("eliminar")
			queue_free()
			#cuando esta accion se ejecuta se supone que el proyectil entraria en el aro y sumaria puntos
