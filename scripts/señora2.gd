extends Area2D

var vida=100

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and global.seora2habla==true:
		print("Toma este amuleto")
		global.amuleto=true
		$Timer.start()

	if Input.is_action_just_pressed("key-e") and global.seora2habla==true and global.espada==true:
		print("No me pegues malnacido")
		vida=vida-25
	if vida <= 0:
		queue_free()

func _on_seora2_body_entered(body):
	global.seora2habla=true

func _on_seora2_body_exited(body):
	global.seora2habla=false


func _on_Timer_timeout():
	global.vete=true
	pass # Replace with function body.
