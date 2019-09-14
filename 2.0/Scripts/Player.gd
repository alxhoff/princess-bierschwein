extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 30
const MAX_SPEED = 300
const ACCELERATION = 20
const GROUND_FRICTION = 0.25
const AIR_FRICTION = 0.05
const JUMP_HEIGHT = -900
const MIN_JUMP = -450

var motion = Vector2()
var jumping = false

func _physics_process(delta):

	var friction = false
	motion.y += GRAVITY

	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = true


	if is_on_floor():
		if Input.is_action_pressed("ui_right"):
			$Sprite.play("Running")
		elif Input.is_action_pressed("ui_left"):
			$Sprite.play("Running")
		else:
			$Sprite.play("Idle")
			friction = true

		if jumping:
			jumping = false
			$Sprite.play("Landing")


		if Input.is_action_pressed("ui_up"):
			$jump.play(0)
			jumping = true
			motion.y = JUMP_HEIGHT
		if friction == true:
			motion.x = lerp(motion.x, 0, GROUND_FRICTION)
	else:
		if motion.y > 0:
			$Sprite.play("Falling")

		elif motion.y < 0:
			$Sprite.play("Jumping")


		if friction == true:
			motion.x = lerp(motion.x, 0, AIR_FRICTION)

	motion = move_and_slide(motion, UP)

	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
