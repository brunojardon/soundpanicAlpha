extends Area2D

var habla=false
var espada=global.espada
var vida=100

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and habla==true:
		print("Toma este amuleto")
		global.mamita=true

	if Input.is_action_just_pressed("key-e") and habla==true and espada==true:
		print("No me pegues malnacido")
		vida=vida-25
	if vida <= 0:
		queue_free()

func _on_seora2_body_entered(body):
	habla=true
	espada=true

func _on_seora2_body_exited(body):
	habla=false
	espada=true
