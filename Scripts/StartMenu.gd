extends Node

func _ready():
	pass
	

func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Scenes/Menus/OptionsMenu.tscn")

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")

func _on_ExitButton_pressed():
	get_tree().quit()
