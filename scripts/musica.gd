extends Area2D

onready var musica=$cancionAmbiente



func _on_musica_body_entered(body):
	$cancionAmbiente.play()
	pass # Replace with function body.


func _on_musica_body_exited(body):
	$cancionAmbiente.stop()
	pass # Replace with function body.
