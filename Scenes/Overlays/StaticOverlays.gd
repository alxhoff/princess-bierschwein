extends Node

func _ready():
	pass

signal show_game_over(state)
signal show_progress_completed(state)

func _on_CurrentLevel_progress_completed(state):
	emit_signal("show_progress_completed", state)


func _on_Lives_game_over(state):
	emit_signal("show_game_over", state)
