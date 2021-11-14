extends Area2D

var habla=false
var visibilidad=null

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and habla==true:
		print("soy la señora 3 jaja")
		visibilidad=true

func _on_seora3_body_entered(body):
	habla=true
	print(visibilidad)
	pass # Replace with function body.

func _on_seora3_body_exited(body):
	habla=false
	pass # Replace with function body.

