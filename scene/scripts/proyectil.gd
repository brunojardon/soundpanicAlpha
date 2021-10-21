extends Area2D

var movimiento = Vector2()
var dentro = false
var eliminar = false
export var salud = 300
export var missKey = 50

func _on_aro_area_shape_entered(area_id, area, area_shape, local_shape):
	dentro = true

#func _on_aro_area_entered(area):
#	dentro = true

func _process(delta):
	if Input.is_action_just_pressed("key-E"):
		movimiento.x -= 75
	position += movimiento * delta
	if Input.is_action_just_pressed("key-A") and dentro==true:
		salud=salud+10
		print(salud)
		print("aro conectado")
		pass
		queue_free()
	else:
		pass

func _on_aro_area_shape_exited(area_id, area, area_shape, local_shape):
	dentro = false

#func _on_aro_area_exited(area):
#	dentro = false


func _on_protaArea_area_entered(area):
	salud=salud - missKey
	print(salud)
	queue_free()
