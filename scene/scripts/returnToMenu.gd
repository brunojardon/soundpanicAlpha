extends Button


func _on_return_pressed(): #Al presionar el boton return devuelve al menu principal
	get_tree().change_scene("res://scene/menuScene.tscn")
	print("Jugar")
