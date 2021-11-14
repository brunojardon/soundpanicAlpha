extends Area2D

var espada=global.espadarompemuros

func _physics_process(delta):
	if Input.is_action_just_pressed("key-e") and espada==true:
		queue_free()
		pass

func _on_piedras2_body_entered(body):
	print("malos")
	espada==true
	pass # Replace with function body.
