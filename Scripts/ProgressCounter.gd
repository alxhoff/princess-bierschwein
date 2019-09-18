extends MarginContainer

func _ready():
	pass

func _on_ScoreUI_progress_changed(count):
	$ProgressVBox/MarginProgressBar/ProgressBar.value = count
