extends KinematicBody2D

const acceleration = 400
const maxSpeed = 70
const friction = 500
var velocity = Vector2.ZERO
var espada= global.espada
var timer
onready var animation=$AnimatedSprite

func _on_ready():
	timer.connect("timeout",self,"delay")

func _on_espada_body_entered(body):
	espada=true

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("derecha") - Input.get_action_strength("izquierda")
	input_vector.y = Input.get_action_strength("abajo") - Input.get_action_strength("arriba")
	input_vector = input_vector.normalized()
	if Input.is_action_pressed("derecha"):
		$AnimatedSprite.play("tenguWalkDer")
	elif Input.is_action_pressed("izquierda"):
		$AnimatedSprite.play("tenguWalkIzq")
	else:
		$AnimatedSprite.play("tenguIdleDer")
		espada=true
	if Input.is_action_just_pressed("key-e") and espada==true:
		$AnimatedSprite.play("tenguAttack")

	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * maxSpeed, acceleration * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	velocity = move_and_slide(velocity)

func delay():
	timer.set_wait_time(1)
	timer.start()


