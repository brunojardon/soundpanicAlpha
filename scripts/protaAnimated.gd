extends AnimatedSprite

var attack = "tenguAttack"
var attack1 = "tenguAttack1"
var idle = "idleTengu"

func _ready():
	if Input.is_action_just_pressed("key-a"):
		play("tenguAttack")
	else:
		pass

func _process(delta):
	pass
