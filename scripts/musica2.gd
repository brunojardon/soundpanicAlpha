extends Area2D

onready var musica=$tranquilon
onready var musica2=$tranquilon2

func _on_musica2_body_entered(body):
	$tranquilon.play()
	$tranquilon2.play()
func _on_musica2_body_exited(body):
	$tranquilon.stop()
	$tranquilon2.stop()
