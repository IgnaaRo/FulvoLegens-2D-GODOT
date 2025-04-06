extends RigidBody2D

# Variables de física
var bounce_factor: float = 1.0
var friction_factor: float = 0.1
var bounce_velocity_threshold: float = 200.0

func _ready():

	physics_material_override = create_material(friction_factor, bounce_factor)
	linear_velocity = Vector2.ZERO
	angular_velocity = 0.0

func _on_collision(body: Node):

	if body.name == "player" or body.name == "player2" or body.name == "Pata":
		_handle_pata_collision(body)

func _handle_pata_collision(body: Node):

	if body.is_in_group("players"):
		var direction = (global_position - body.global_position).normalized()
		linear_velocity = direction * bounce_velocity_threshold
		angular_velocity = 200.0


func create_material(friction: float, bounce: float) -> PhysicsMaterial:
	var material = PhysicsMaterial.new()
	material.friction = friction
	material.bounce = bounce
	return material

