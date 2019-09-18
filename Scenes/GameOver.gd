extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_visible(enable):
	$VBoxContainer/Label.visible = enable
	$VBoxContainer/MenuButton.visible = enable

func _on_MenuButton_pressed():
	set_visible(false)
	global_var.reset_game()
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")
