extends KinematicBody2D

export var salud = 300 #Vidas del prota
export var missKey = 50 #Vidas a restar por fallar

func _on_proyectil_body_entered(body): #Si el proyectil colisiona con prota
	salud = salud - missKey #Se resta el fallo a las vidas
	if salud <= 0: #Si el prota se queda sin vidas
		queue_free() #Se elimina el prota
