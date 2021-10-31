extends Area2D

func _ready():
	connect("area_entered", self, "error")

func error(object):
	object.queue_free()
