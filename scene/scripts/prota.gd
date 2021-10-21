extends KinematicBody2D

export var salud = 300
export var missKey = 50




func _on_proyectil_body_entered(body):
	salud = salud - missKey
	if salud <= 0:
		queue_free()
