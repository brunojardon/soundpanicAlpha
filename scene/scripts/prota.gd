extends KinematicBody2D

export var salud = 300
export var missKey = 50




func _on_proyectil_body_entered(body):
	salud = salud - missKey
	if salud <= 0:
		queue_free()


func _on_protaArea_area_entered(area):
	pass # Replace with function body.


func _on_proyectil_area_entered(area):
	pass # Replace with function body.
