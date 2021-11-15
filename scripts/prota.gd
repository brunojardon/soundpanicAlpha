extends Area2D

export var misskey = 25

func _ready():
	connect("area_entered", self, "losseLife")
	connect("area_entered", self, "error")

func error(object):
	object.queue_free()

func losseLife(object):
	global.salud = global.salud - misskey
	print(global.salud)
	if global.salud <= 0:
		queue_free()

		get_tree().change_scene("res://scene/mains/pantalla de perdida.tscn")

