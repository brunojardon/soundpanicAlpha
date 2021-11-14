extends Area2D

var espada=global.espada

func _ready():
	print(espada)

func _on_espada_body_entered(body):
	espada==true
	print("Has obtenido la espada lol")
	print(espada)
	queue_free()
