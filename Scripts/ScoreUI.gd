extends CanvasLayer

signal beer_count_updated(count)
signal life_count_updated(count)
signal progress_changed(count, total, percent)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass


func _on_Beers_beer_count_changed(count):
	emit_signal("beer_count_updated", count)
	emit_signal("progress_updated", count)


func _on_Lives_lives_changed(lives):
	emit_signal("life_count_updated", lives)


func _on_CurrentLevel_progress_changed(count, total, percent):

	emit_signal("progress_changed", count, total, percent)