extends KinematicBody2D

export var salud = 100
export var missKey = 120
export var vida = 3



func _on_proyectil_body_entered(body):
	vida = salud - missKey
	if vida <= 0:
		queue_free()
