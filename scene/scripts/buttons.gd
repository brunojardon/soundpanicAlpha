extends Control


func _ready():
	pass

func _on_playButton_pressed():
	get_tree().change_scene("res://scene/battleScene.tscn")
	print("Jugar")

func _on_journeyButton_pressed():
	get_tree().change_scene("res://scene/journeyScene.tscn")

func _on_optionsButton_pressed():
	get_tree().change_scene("res://scene/configScene.tscn")
	print("Configuracion")


func _on_exitButton_pressed():
	get_tree().quit()
	print("Cerrar")
