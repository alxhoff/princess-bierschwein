extends Area2D

# Member variables
var taken = false
export var value = 1

func _on_CollectableBeer_body_entered( body ):
	if not taken and body is preload("res://Scripts/Player.gd"):
		$anim.play("taken")
		taken = true
		global_var.beer_count += value
