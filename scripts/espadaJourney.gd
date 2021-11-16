extends Area2D

func _on_espada_body_entered(body):
	global.espada=true
	print("Espada en el inventario")
	$".".queue_free()
