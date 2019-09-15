extends Node

func _ready():
	pass

func _on_OptionsButton_pressed():
	pass # Replace with function body.


func _on_StartButton_pressed():
	print("start pressed")
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")


func _on_ExitButton_pressed():
	pass # Replace with function body.
