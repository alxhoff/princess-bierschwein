extends CanvasLayer

func _ready():
	set_visible(false)
	pass


func _on_ContinueButton_pressed():
	pass # Replace with function body.


func _on_ExitButton_pressed():
	pass # Replace with function body.

func set_visible(enable):
	$VBoxContainer/Label.visible = enable
	$VBoxContainer/ContinueButton.visible = enable
	$VBoxContainer/ExitButton.visible = enable


func _on_StaticOverlays_show_progress_completed(state):
	set_visible(state)
