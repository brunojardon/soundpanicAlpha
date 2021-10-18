extends Area2D

var movimiento = Vector2()
var dentro = false
var eliminar = false


func _on_aro_area_shape_entered(area_id, area, area_shape, local_shape):
	dentro = true

#func _on_aro_area_entered(area):
#	dentro = true

func _process(delta):
	if Input.is_action_just_pressed("key-E"):
		movimiento.x -= 75
	position += movimiento * delta
	if Input.is_action_pressed("key-A") and dentro == false:
		pass
	if dentro == true and Input.is_action_pressed("key-A"):
		queue_free()
	else:
		pass

func _on_aro_area_shape_exited(area_id, area, area_shape, local_shape):
	dentro = false

#func _on_aro_area_exited(area):
#	dentro = false


func _on_protaArea_area_entered(area):
	queue_free()


