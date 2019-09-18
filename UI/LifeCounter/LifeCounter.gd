extends MarginContainer

func _ready():
	pass

func _on_ScoreUI_life_count_updated(count):
	$LivesHBox/Margin1/Sprite1.visible = false
	$LivesHBox/Margin2/Sprite2.visible = false
	$LivesHBox/Margin3/Sprite3.visible = false
	if count > 2:
		$LivesHBox/Margin3/Sprite3.visible = true
	if count > 1:
		$LivesHBox/Margin2/Sprite2.visible = true
	if count > 0:
		$LivesHBox/Margin1/Sprite1.visible = true