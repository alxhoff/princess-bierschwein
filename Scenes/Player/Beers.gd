extends Node

export(int) var beer_count = 0

signal beer_count_changed(count)

func _ready():
	pass

func _on_BeerCollector_beer_collected(beer):
	beer_count += 1
	emit_signal("beer_count_changed", beer_count)
