extends Control

func _on_battlescene_pressed():
	get_tree().change_scene("res://scene/mains/battleScene.tscn")

func _on_menu_pressed():
	get_tree().change_scene("res://scene/mains/mainMenuScene.tscn")

func _on_volver_al_mapa_pressed():
	get_tree().change_scene("res://scene/mains/journeyScene.tscn")
