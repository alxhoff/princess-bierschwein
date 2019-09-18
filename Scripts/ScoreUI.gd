extends CanvasLayer

onready var score_label = $top_ui/MarginContainer/HBoxContainer/MarginBeerCount/BeerCountHBox/MarginContainer/BeerCountLabel
onready var progress_bar = $top_ui/MarginContainer/HBoxContainer/MarginProgress/ProgressVBox/MarginContainer2/ProgressBar

onready var life1 = $top_ui/MarginContainer/HBoxContainer/MarginLives/LivesHBox/Margin1/Sprite1
onready var life2 = $top_ui/MarginContainer/HBoxContainer/MarginLives/LivesHBox/Margin2/Sprite2
onready var life3 = $top_ui/MarginContainer/HBoxContainer/MarginLives/LivesHBox/Margin3/Sprite3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func update_lives():
	print(global_var.lives)
	var lives = global_var.lives
	life3.visible = false
	life2.visible = false
	life1.visible = false
	if lives == 3:
		life3.visible = true
	if lives >= 2:
		life2.visible = true
	if lives >= 1:
		life1.visible = true

func _process(delta):
	if !score_label:
		score_label = $top_ui/MarginContainer/HBoxContainer/MarginBeerCount/BeerCountHBox/MarginContainer/BeerCountLabel
	score_label.text = String(global_var.beer_count)
	#print(get_parent().find_node("Level").name)
	progress_bar.set_progress_texture(get_parent().find_node("Level").get_progress())

