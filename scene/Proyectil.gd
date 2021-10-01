extends Area2D

export var damage = false

var Movimiento = Vector2()
var bullet_in_area = false
var bullet_hit = false
#var damage = false

#Movimiento del proyectil
func _process(delta):
	print(bullet_in_area)
	if Input.is_action_just_pressed("ui_F1"):
		Movimiento.x -= 75
	position += Movimiento * delta

#Proyectil en area
func _on_cuerpo_area_entered(area):
	print("entro")
	bullet_in_area = true
#Proyectil eliminado
	if Input.is_action_pressed("ui_F2") and bullet_in_area:
		queue_free()
		print("eliminado")

#Proyectil fallo
func _on_cuerpo_area_exited(area):
	print("salio")
	bullet_hit = true
#Daño del proyectil fallado

#	queue_free()
#	damage = true
