extends StaticBody2D

# Fuerza del impulso aplicado a la pelota
@export var kick_force: float = 1000.0

func _ready():
	# Conecta la señal del `Area2D` hijo para detectar cuando la pelota entra
	$player2.connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "pelota" and body is RigidBody2D:
		# Calcula la dirección del impulso
		var direction = (body.global_position - global_position).normalized()
		# Aplica un impulso fuerte a la pelota
		body.apply_impulse(Vector2.ZERO, direction * kick_force)

