extends Area2D

var movimiento=Vector2()
var dentro=false
var salud=100

func _on_proyectil_area_entered(aro):
	dentro=true
	pass # Replace with function body.

func _process(delta): #Se ejecuta cada frame
	movimiento.x = -100 #Aumenta -200 en su eje X
	position += movimiento * delta
	if Input.is_action_just_pressed("key-A") and dentro==true: #Si se presiona "A" y el proyectil esta dentro...
		salud = salud + 10 #Se suma 10 de salud
		print("La salud es ",salud)
		queue_free() #Se elimina el proyectil
    
func _on_proyectil_area_exited(aro):
	dentro=false
	pass # Replace with function body.