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

func _input(event):
	if Input.is_action_just_pressed("key-e"):
		$protaAnimated.play("tenguAttack")
		print("chau xd")
		$idleAnimation.start()
		print("chau dx")
	elif Input.is_action_just_pressed("key-a"):
		$protaAnimated.play("tenguAttack2")
		print("chau xd")
		$idleAnimation.start()
		print("chau dx")

func _on_idleAnimation_timeout():
	print("hola xd")
	$protaAnimated.play("tenguAttackIdle")
	$idleAnimation.stop()
