extends Node

signal lives_changed(lives)
signal game_over(state)

export (int) var lives = 3

func _ready():
	emit_signal("lives_changed", lives)

func _on_Player_life_lost():
	lives -= 1
	lives = max(0, lives)
	if lives == 0:
		emit_signal("game_over", true)
	emit_signal("lives_changed", lives)


func _on_Player_reset_lives():
	lives = 3
	emit_signal("lives_changed", lives)