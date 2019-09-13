extends Area2D

# Member variables
var taken = false
export var value = 1

func _on_CollectableBeer_body_entered( body ):
	if not taken and body is preload("res://Player.gd"):
		$anim.play("taken")
		taken = true
		get_parent().get_parent().beers_total += value

func _on_coin_area_enter(area):
	pass # replace with function body


func _on_coin_area_enter_shape(area_id, area, area_shape, area_shape):
	pass # replace with function body
