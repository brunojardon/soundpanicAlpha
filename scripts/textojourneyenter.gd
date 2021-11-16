extends Area2D

onready var texto=$label

func _ready():
	texto=visible
	visible=false

func _on_Area2D_body_entered(body):
	visible=true

func _on_Area2D_body_exited(body):
	visible=false
