extends Node2D

const spawn = preload("res://scene/props/bala.tscn")

func _process(delta):
	if Input.is_action_just_pressed("key-a"):
		disparo()

func disparo():
	var spawnBala = spawn.instance()
	spawnBala.position = Vector2(665.451, 451.733)
	get_parent().add_child(spawnBala)
