extends Node

const TOTAL_BEERS = 11
var beers_remaining = TOTAL_BEERS
var progress = beers_remaining / TOTAL_BEERS

const START_POSITION = Vector2(0, 380)

func beer_drunk():
	beers_remaining -= 1
	progress = beers_remaining/TOTAL_BEERS

func get_progress():
	return progress

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
