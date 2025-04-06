extends RigidBody2D

# Parámetros configurables para lograr una sensación de pelota liviana
var bounce_factor := 0.5    # Rebote moderado
var friction := 0.1         # Baja fricción para que se deslice fácilmente
var initial_impulse := Vector2(150, -100)  # Impulso inicial hacia adelante y un poco hacia arriba
var damping := 0.1          # Baja resistencia al movimiento

func _ready():
	# Configura el material físico
	var physics_material = PhysicsMaterial.new()
	physics_material.bounce = bounce_factor
	physics_material.friction = friction
	physics_material_override = physics_material

	# Configura propiedades físicas de la pelota
	self.mass = 0.05            # Masa baja para que sea liviana
	self.linear_damp = damping  # Baja resistencia al movimiento
	self.angular_damp = damping # Baja resistencia a la rotación

	# Opcional: aplicar un impulso inicial si es necesario
	apply_impulse(Vector2.ZERO, initial_impulse)  # Puedes modificar este valor o quitarlo

# Manejar colisiones con los jugadores
func _on_area_entered(area):
	if CharacterBody2D.name == "player" or CharacterBody2D.name == "player2":
		# Aquí podrías añadir un efecto visual o sonido en la colisión con el jugador
		pass

# Esta función debe ser llamada para resetear la pelota a su posición inicial
func reset_position():
	# Configura la pelota en su posición inicial
	position = Vector2(400, 300)  # Cambia las coordenadas si la posición inicial es diferente
	linear_velocity = Vector2.ZERO
	angular_velocity = 0

func reset_ball_position():
	$pelota.reset_position()  # Asumiendo que el nodo de la pelota se llama 'pelota'
