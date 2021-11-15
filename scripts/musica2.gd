extends Area2D

onready var musica=$tranquilon

func _on_musica2_body_entered(body):
	$tranquilon.play()

func _on_musica2_body_exited(body):
	$tranquilon.stop()
