extends Area2D

var habla=false
onready var dialogo=$globo

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and habla==true:
		print("abuelita coco")
		pass

func _on_seora_body_entered(body):
	habla=true

func _on_seora_body_exited(body):
	habla=false
	pass # Replace with function body.
