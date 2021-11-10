extends KinematicBody2D

const acceleration = 400
const maxSpeed = 80
const friction = 500
var velocity = Vector2.ZERO
onready var animation = $AnimationPlayer


func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("derecha") - Input.get_action_strength("izquierda")
	input_vector.y = Input.get_action_strength("abajo") - Input.get_action_strength("arriba")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		if input_vector.x > 0:
			animation.play("run_right")
		else:
			animation.play("run_left")
		velocity = velocity.move_toward(input_vector * maxSpeed, acceleration * delta)
		print (velocity)
	else:
		animation.play("iddle")
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)

	velocity = move_and_slide(velocity)

