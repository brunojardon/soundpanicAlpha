extends Area2D

export var salud = 100
export var misskey = 25

func _ready():
	connect("area_entered", self, "losseLife")
	connect("area_entered", self, "error")

func error(object):
	object.queue_free()

func losseLife(object):
	salud = salud - misskey
	print(salud)
	if salud <= 0:
		queue_free()

		get_tree().change_scene("res://scene/mains/pantalla de perdida.tscn")

