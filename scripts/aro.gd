extends Area2D

func _ready():
	connect("area_shape_entered", self, "balafuera")

func balafuera(object):
	object.queue_free()
