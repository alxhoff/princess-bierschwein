extends CanvasLayer

signal reset_game

func _ready():
	pass # Replace with function body.

func set_visible(enable):
	$VBoxContainer/Label.visible = enable
	$VBoxContainer/RestartButton.visible = enable
	$VBoxContainer/QuitButton.visible = enable

func _on_RestartButton_pressed():
	set_visible(false)
	get_tree().change_scene("res://Scenes/World.tscn")
	emit_signal("reset_game")

func _on_QuitButton_pressed():
	set_visible(false)
	get_tree().change_scene("res://Scenes/Menus/StartMenu.tscn")

func _on_Lives_game_over():
		set_visible(true)
