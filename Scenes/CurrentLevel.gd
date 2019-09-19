extends Node

signal progress_changed(count, total, percent)
signal progress_completed(state)


func _on_Beers_beer_count_changed(count):
	var beers = $Level.TOTAL_BEERS
	var progress = float(count)/$Level.TOTAL_BEERS*100
	emit_signal("progress_changed", count, $Level.TOTAL_BEERS, progress)
	if(progress > 99):
		emit_signal("progress_completed", true)
