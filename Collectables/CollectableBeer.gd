extends Area2D

# Member variables
var taken = false

func _on_CollectableBeer_body_entered( body ):
	print("Entered")
	if not taken and body is preload("res://Player.gd"):
		$anim.play("taken")
		taken = true

func _on_coin_area_enter(area):
	pass # replace with function body


func _on_coin_area_enter_shape(area_id, area, area_shape, area_shape):
	pass # replace with function body
