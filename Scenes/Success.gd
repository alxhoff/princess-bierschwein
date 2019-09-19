extends CanvasLayer

signal next_level

func _ready():
	set_visible(false)
	pass

func _on_ContinueButton_pressed():
	set_visible(false)
	emit_signal("next_level")


func _on_ExitButton_pressed():
	set_visible(false)
	get_tree().change_scene("res://Scenes/Menus/StartMenu.tscn")

func set_visible(enable):
	$VBoxContainer/Label.visible = enable
	$VBoxContainer/ContinueButton.visible = enable
	$VBoxContainer/ExitButton.visible = enable


func _on_StaticOverlays_show_progress_completed(state):
	set_visible(state)
