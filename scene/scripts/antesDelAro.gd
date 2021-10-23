extends Area2D

var entro=false


func _on_antesdelaro_area_entered(area):
	entro=true
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("key-A") and entro==true:
		pass

func _on_antesdelaro_area_exited(area):
	entro=false
	pass
