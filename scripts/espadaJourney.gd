extends Area2D

func _on_espada_body_entered(body):
	global.espada=true
	print("Has obtenido la espada lol")
	queue_free()
