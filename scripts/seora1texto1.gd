extends Control

onready var texto=$Label

func _ready():
	texto=visible
	visible=false

func _physics_process(delta):
	while global.amuleto==false and Input.is_action_just_pressed("enter") and global.seora1habla==true:
		visible=true
		break
	if global.seora1habla==false:
		visible=false
