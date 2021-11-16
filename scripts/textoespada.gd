extends Area2D


func _on_ready():
	connect("body_entered", self, "aparece")

func aparece():
	pass
