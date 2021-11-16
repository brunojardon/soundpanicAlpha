extends Area2D

export var misskey = 25

func _ready():
	connect("area_entered", self, "losseLife")
	connect("area_entered", self, "error")

func error(object):
	global.cura=0
	object.queue_free()

func losseLife(object):
	global.salud = global.salud - misskey
	global.cura=0
	print("cura",global.cura)
	print(global.salud)
	if global.salud <= 0:
		queue_free()
		get_tree().change_scene("res://scene/mains/pantalla de perdida.tscn")

