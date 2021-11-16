extends Area2D

func _physics_process(delta):
	if global.amuleto==true:
		queue_free()

func _on_bloqueodezona_body_entered(body):
	print("necesitas el amuleto para pasar")
	pass # Replace with function body.


