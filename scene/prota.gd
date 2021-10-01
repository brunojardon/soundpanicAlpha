extends KinematicBody2D



func _on_proyectil_area_entered(area):
	queue_free()
