extends Area2D

var habla=false

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and habla==true:
		print("homosexualí ½í¸¡")

func _on_seora2_body_entered(body):
	habla=true
	print("la puso en la mamita fea jaja")

func _on_seora2_body_exited(body):
	habla=false
	pass # Replace with function body.

