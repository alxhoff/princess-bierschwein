extends Node

signal lives_changed(lives)
#signal lives_depleted

var current_lives = 3

func _ready():
	emit_signal("lives_changed", current_lives)

func decrement_lives():
	current_lives -= 1
	current_lives = max(0, current_lives)
	emit_signal("lives_changed", current_lives)

func increment_lives():
	current_lives += 1
	current_lives = min(global_var.MAX_LIVES, current_lives)
	emit_signal("lives_changed", current_lives)
	
func set_lives(value):
	current_lives = value
	emit_signal("lives_changed", current_lives)

