extends Control

func _on_journeyButton_pressed():
	get_tree().change_scene("res://scene/world.tscn") #Cambia a la escena de posbatalla
	print("Journey")

func _on_playButton_pressed():
	get_tree().change_scene("res://scene/battleScene.tscn") #Cambia a la escena de la mecanica
	print("Jugar")

func _on_optionsButton_pressed():
	get_tree().change_scene("res://scene/configScene.tscn") #Cambia a la escena de configuracion
	print("Configuracion")

func _on_exitButton_pressed():
	get_tree().quit() #Cierra el juego
	print("Cerrar")


