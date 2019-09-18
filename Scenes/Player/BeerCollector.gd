extends Area2D

signal beer_collected(beer)

func _ready():
	pass

func _on_BeerCollector_body_entered(body):
	emit_signal("beer_collected", body)
	node.queue_free()
