extends MarginContainer

func _ready():
	pass


func _on_ScoreUI_progress_changed(count, total, percent):
	$ProgressVBox/MarginBeerCount/HBoxContainer/BeerCurrent.text = str(count)
	$ProgressVBox/MarginBeerCount/HBoxContainer/BeerTotal.text = str(total)
	$ProgressVBox/MarginProgressBar/ProgressBar.set_value(percent)