extends Area2D

var habla=false


func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and habla==true:
		print("gay")

func _on_seora_body_entered(body):
	habla=true
	print("la puso en la vieja")

func _on_seora_body_exited(body):
	habla=false
	pass # Replace with function body.
