extends Area2D


@export var is_player1_goal: bool


signal goal_scored(is_for_player1: bool)


@export var hit_force: float = 5000.0

func _ready():
	
	self.connect("body_entered", Callable(self, "_on_body_entered"))


func _on_body_entered(body):
	if body.name == "pelota":
		
		if body is RigidBody2D:
			var direction = (body.position - self.position).normalized()
			body.apply_impulse(Vector2.ZERO, direction * hit_force)
