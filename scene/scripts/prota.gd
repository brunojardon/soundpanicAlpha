extends KinematicBody2D

export var salud = 100
export var missKey = 90
export var vida = 3



func _on_proyectil_body_entered(body):
	print(vida)
	vida = salud - missKey
	print(vida)
	pass
