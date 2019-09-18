extends Node

const GRAVITY = 30

var beer_count = 0
var lives = 3
var percentage_complete = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func reset_game():
	beer_count = 0
	lives = 3
	percentage_complete = 0