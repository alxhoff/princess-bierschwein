extends MarginContainer

func _ready():
	pass


func _on_ScoreUI_beer_count_updated(count):
	print("Updating counter")
	$BeerCountHBox/MarginContainer/BeerCountLabel.text = str(count)
