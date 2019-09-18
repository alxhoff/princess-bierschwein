extends Area2D

signal beer_collected(beer)

func _ready():
	pass

func _on_BeerCollector_area_entered(area):
	emit_signal("beer_collected", area)

