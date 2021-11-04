extends Control

func _input(event):
	if event.is_action_pressed("key-esc"):
		print("hola :D")
		var estadoPausa = not get_tree().paused
		get_tree().paused = estadoPausa
		visible = estadoPausa
		if event.is_action_pressed("key-a"):
			print("chau :)")
			get_tree().paused = estadoPausa
			visible = estadoPausa
