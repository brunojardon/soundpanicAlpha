extends Area2D

var habla=false
var espada=global.espada
var vida=global.vidaSeniora1
onready var dialogo=$globo

func _physics_process(delta):
	if Input.is_action_just_pressed("key-e") and habla==true and espada==true:
		print("No me pegues pinche pendejo :v")
		vida=vida-25
	if vida <= 0:
		queue_free()
	if Input.is_action_just_pressed("enter") and habla==true:
		print("No podras pasar hasta que hables con marina") 

func _on_seora_body_entered(body):
	habla=true
	espada=true
	print(habla,"habla")
	print(espada,"espada")

func _on_seora_body_exited(body):
	habla=false
	pass # Replace with function body.
