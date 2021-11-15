extends Area2D

func _physics_process(delta):
	if global.mamita==true:
		queue_free()

func _on_bloqueodezona_body_entered(body):
	print("necesitas el amuleto para pasar")
	pass # Replace with function body.


