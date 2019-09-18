extends Node

func _ready():
	pass # Replace with function body.

func _on_SaveButton_pressed():
	get_tree().change_scene("res://Scenes/Menus/StartMenu.tscn")
