extends Control

onready var texto1=$label

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and global.seora2habla==true and global.vete==true:
		texto1=visible
		visible=true
	if global.seora2habla==false:
		texto1=visible
		visible=false

