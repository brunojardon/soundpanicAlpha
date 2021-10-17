extends Area2D

var movimiento = Vector2()
var dentro = false
var eliminar = false


func _on_aro_area_entered(area):
	dentro = true

func _process(delta):
	if Input.is_action_just_pressed("key-E"):
		movimiento.x -= 75
	position += movimiento * delta
	if dentro == true and Input.is_action_pressed("key-A"):
		queue_free()
	else:
		pass

func _on_aro_area_exited(area):
	dentro = false


func _on_protaArea_area_entered(area):
	queue_free()
