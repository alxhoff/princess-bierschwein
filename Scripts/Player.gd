extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 30
const MAX_SPEED = 300
const ACCELERATION = 20
const GROUND_FRICTION = 0.25
const AIR_FRICTION = 0.05
const JUMP_HEIGHT = -900
const MIN_JUMP = -450

const BURP = preload("res://Scenes/Burp.tscn")

signal life_lost

var motion = Vector2()
var jumping = false
var dead = false
var game_over = false

func _physics_process(delta):
	
	if dead == false:

		var friction = false
		motion.y += GRAVITY
	
		if Input.is_action_pressed("ui_right"):
			motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
			$Sprite.flip_h = false
			if sign($Position2D.position.x) == -1:
				$Position2D.position.x *= -1
		elif Input.is_action_pressed("ui_left"):
			motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
			$Sprite.flip_h = true
			if sign($Position2D.position.x) == 1:
				$Position2D.position.x *= -1
			
		if Input.is_action_just_pressed("ui_select"):
			var burp = BURP.instance()
			if sign($Position2D.position.x) == 1:
				burp.set_direction(1)
			else:
				#set burp x extra over
				burp.set_direction(-1)
			get_parent().add_child(burp)
			burp.position = $Position2D.global_position
	
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
		
		if get_slide_count() > 0:
			for i in range(get_slide_count()):
				if "Enemy" in get_slide_collision(i).collider.name:
					dead()
	else:
		pass
		
func dead():
	dead = true
	$Sprite.play("Dead")
	$CollisionShape2D.call_deferred("set_disabled", true)
	emit_signal("life_lost")
	if game_over != true:
		$Timer.start()

func _on_Timer_timeout():
	dead = false
	$CollisionShape2D.call_deferred("set_disabled", false)
	position = get_parent().START_POSITION
	$Sprite.play("Idle")
	

func _on_Lives_game_over():
	game_over = true

signal reset_lives
signal reset_beer_count

func _on_GameOver_reset_game():
	emit_signal("reset_lives")
	emit_signal("reset_beer_count")
