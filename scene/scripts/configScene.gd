extends Node2D

func _ready():
	OS.set_window_title("Configuracion")


func _on_volumeBar_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),value)


func _on_return_pressed():
	get_tree().change_scene("res://scene/menuScene.tscn")
	print("Return")


func _on_fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen

