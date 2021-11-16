extends Area2D

onready var texto=$Label

func _ready():
	texto=visible
	visible=false

func _physics_process(delta):
	if global.piedrasrotas==true:
		queue_free()

func _on_textoPiedrasrompibles_body_entered(body):
	visible=true
	pass # Replace with function body.

func _on_textoPiedrasrompibles_body_exited(body):
	visible=false
	pass # Replace with function body.
