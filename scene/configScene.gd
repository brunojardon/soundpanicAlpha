extends Node2D

#var windowW = 1900
#var windowH = 1080

#if windowW < 800 and windowH <600
#	se activa un joystick y un panel tactil

func _ready():
	pass


func _on_volumeBar_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),value)



func _on_return_pressed():
	get_tree().change_scene("res://scene/menuScene.tscn")
	print("Return")
