extends KinematicBody2D

const acceleration = 100
const maxSpeed = 300
const friction = 50
var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("derecha") - Input.get_action_strength("izquierda")
	input_vector.y = Input.get_action_strength("abajo") - Input.get_action_strength("arriba")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity += input_vector * acceleration * delta
		velocity = velocity.clamped(maxSpeed * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)

	move_and_collide(velocity)

