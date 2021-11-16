extends Area2D

var vida=global.vidaSeniora1
var i=1
onready var dialogo=$globo

func _physics_process(delta):
	if Input.is_action_just_pressed("key-e") and global.seora1habla==true and global.espada==true:
		print("No me pegues pinche pendejo :v")
		vida=vida-25
	if vida <= 0:
		queue_free()
	while global.amuleto==false and Input.is_action_just_pressed("enter") and global.seora1habla==true:
		print("No podras pasar hasta que hables con marina")
		break
	if Input.is_action_just_pressed("enter") and global.amuleto==true and global.seora1habla==true:
		print("suerte, la vas a necesitar") 

func _on_seora_body_entered(body):
	global.seora1habla = true
	print(global.seora1habla,"habla")
	print(global.espada,"espada")

func _on_seora_body_exited(body):
	global.seora1habla = false
