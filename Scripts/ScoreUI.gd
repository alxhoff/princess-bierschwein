extends CanvasLayer

onready var score_label = $top_ui/MarginContainer/HBoxContainer/MarginBeerCount/BeerCountHBox/MarginContainer/BeerCountLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if !score_label:
		score_label = $top_ui/MarginContainer/HBoxContainer/MarginBeerCount/BeerCountHBox/MarginContainer/BeerCountLabel
	score_label.text = String(global_var.beer_count)
