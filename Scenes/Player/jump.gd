extends AudioStreamPlayer

const JUMP_SAMPLES = 4
const DEAD_SAMPLES = 3
const BURP_SAMPLES = 2



func _on_Player_sound_burp():
	set_stream(load("res://Sounds/Player/Burp/burp%d.wav" % (randi() % BURP_SAMPLES)))
	play(0)

func _on_Player_sound_dead():
	set_stream(load("res://Sounds/Player/Dead/dead%d.wav" % (randi() % DEAD_SAMPLES)))
	play(0)


func _on_Player_sound_jump():
	set_stream(load("res://Sounds/Player/Jumping/jump%d.wav" % (randi() % JUMP_SAMPLES)))
	play(0)
