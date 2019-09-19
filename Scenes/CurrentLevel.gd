extends Node

signal progress_changed(count, total, percent)


func _on_Beers_beer_count_changed(count):
	var beers = $Level.TOTAL_BEERS
	var progress = float(count)/$Level.TOTAL_BEERS*100
	emit_signal("progress_changed", count, $Level.TOTAL_BEERS, progress)
