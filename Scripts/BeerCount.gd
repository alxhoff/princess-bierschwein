extends Node

signal beer_count_changed(count)

export(int) var beer_count = 0

func _ready():
	emit_signal("beer_count_changed", beer_count)

func _on_BeerCollector_beer_collected(beer):
	beer_count += 1
	emit_signal("beer_count_changed", beer_count)
