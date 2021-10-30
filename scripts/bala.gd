extends Area2D

var movimiento = Vector2()

func _process(delta):
	movimiento.x = -100
	position += movimiento * delta
