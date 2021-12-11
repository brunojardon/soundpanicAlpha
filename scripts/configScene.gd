extends Node2D

func _ready():
	OS.set_window_title("Configuracion")#Coloca titulo de ventana


func _on_volumeBar_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),value) #Hace sonar la musica


func _on_return_pressed():
	get_tree().change_scene("res://scene/mains/mainMenuScene.tscn") #Cambia la escena al menu principal
	print("Return")


func _on_fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen #Juego en pantalla completa
