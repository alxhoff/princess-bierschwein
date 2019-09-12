extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -750


var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$Sprite.flip_h = false
		$Sprite.play("Running")
	elif Input.is_action_pressed("ui_left"):
		$Sprite.flip_h = true
		$Sprite.play("Running")
		motion.x = -SPEED
	else:
		$Sprite.play("Idle")
		motion.x = 0

	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	else:
		$Sprite.play("Jumping")

	motion = move_and_slide(motion, UP)

	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
