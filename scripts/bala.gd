extends Area2D

var dentro=false
var movimiento=Vector2()
export var velocidadDeProyectil = 200
func _ready():
	pass

func _on_proyectil_area_entered(bloque):
	dentro=true

func _process(delta):
	movimiento.x = -velocidadDeProyectil
	position += movimiento * delta
	if Input.is_action_just_pressed("key-a") and dentro==true:
		queue_free()

func _on_proyectil_area_exited(bloque):
	dentro=false
