extends Area2D

var taken = false

func collected():
	if taken == false:
		taken = true
		$anim.play("taken")
		$CollisionShape2D.visible = false
