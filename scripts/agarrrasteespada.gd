extends Area2D

onready var texto=$label

func _ready():
	visible=false

func _physics_process(delta):
	texto=visible

func _on_textoDesaparecible_body_entered(body):
	visible=true

func _on_textoDesaparecible_body_exited(body):
	visible=false
	$Timer.start()

func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.
