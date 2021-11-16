extends Area2D

onready var musica=$cancionAmbiente
onready var musica2=$cancionAmbiente2

func _on_musica_body_entered(body):
	$cancionAmbiente.play()
	$cancionAmbiente2.play()

func _on_musica_body_exited(body):
	$cancionAmbiente.stop()
	$cancionAmbiente2.stop()
