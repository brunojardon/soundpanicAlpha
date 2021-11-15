extends Area2D

onready var musica=$cancionAmbiente

func _on_musica_body_entered(body):
	$cancionAmbiente.play()


func _on_musica_body_exited(body):
	$cancionAmbiente.stop()
