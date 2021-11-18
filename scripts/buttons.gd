extends Control

func _on_button_pressed():
	get_tree().change_scene("res://scene/mains/battleScene.tscn")
	print("Scene")

func _on_playButton_pressed():
	get_tree().change_scene("res://scene/mains/journeyScene.tscn")
	print("Jugar")

func _on_optionsButton_pressed():
	get_tree().change_scene("res://scene/mains/configScene.tscn")
	print("Configuracion")

func _on_exitButton_pressed():
	get_tree().quit()
	print("Cerrar")
