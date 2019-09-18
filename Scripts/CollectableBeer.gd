extends Area2D

var taken = false

func _on_CollectableBeer_body_entered(body):
	if taken == false:
		taken = true
		$anim.play("taken")
		$CollisionShape2D.visible = false
