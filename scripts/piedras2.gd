extends Area2D

var piedra=global.piedra

func _physics_process(delta):
	if Input.is_action_just_pressed("key-e") and piedra==true and global.espada==true:
		queue_free()

func _on_piedras2_body_entered(body):
	print("malos")
	piedra=true
	pass # Replace with function body.


func _on_piedras2_body_exited(body):
	piedra=false
	pass # Replace with function body.
