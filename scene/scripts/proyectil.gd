extends Area2D

var movimiento = Vector2()
var dentro = false #Indica si el proyectil esta dentro o fuera del aro
export var salud = 300 #Vida restante del personaje
export var missKey = 50 #Daño por fallar

func _on_aro_area_shape_entered(area_id, area, area_shape, local_shape):
	dentro = true #Proyectil dentro de aro

func _process(delta): #Se ejecuta cada frame
	movimiento.x = -200 #Aumenta -200 en su eje X
	position += movimiento * delta
	if Input.is_action_just_pressed("key-A") and dentro==true: #Si se presiona "A" y el proyectil esta dentro...
		salud=salud+10 #Se suma 10 de salud
		print(salud) 
		queue_free() #Se elimina el proyectil

func _on_aro_area_shape_exited(area_id, area, area_shape, local_shape):
	dentro = false #Proyectil fuera de aro

func _on_protaArea_area_entered(area): #Proyectil colisiona con prota
	salud = salud - missKey #Se resta el fallo con la salud
	print(salud)
	queue_free() #Se elimina el proyectil
