extends Control

onready var texto=$Label

func _ready():
	texto=visible
	visible=false

func _physics_process(delta):
	if Input.is_action_just_pressed("enter") and global.seora2habla==true and global.vete==false:
		visible=true
	if global.seora2habla==false:
		visible=false
