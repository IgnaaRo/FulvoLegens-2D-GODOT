extends Area2D


signal goal_scored(player)

func _on_body_entered(body):
	
	if body.name == "Ball":
		
		emit_signal("goal_scored", 1)  
