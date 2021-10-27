extends Area2D

var golpe=false
var movimiento=Vector2()
var dentro=false
var salud=300
var cura=10

func _on_pelota_area_entered(bloque):
	dentro=true
	pass # Replace with function body.

func _process(delta): #Se ejecuta cada frame
	movimiento.x = -100 #Aumenta -200 en su eje X
	position += movimiento * delta
	if Input.is_action_just_pressed("key-A") and dentro==true: #Si se presiona "A" y el proyectil esta dentro...
		salud()
		print(salud)

func _on_pelota_area_exited(bloque):
	dentro=false
	pass # Replace with function body.



func _on_protaArea_area_entered(protaArea):
	golpe=true
	if golpe==true:
		salud=salud-50
		print("La salud es ",salud)
	queue_free()
	pass # Replace with function body.

func salud():
	salud=salud+cura
	queue_free()

