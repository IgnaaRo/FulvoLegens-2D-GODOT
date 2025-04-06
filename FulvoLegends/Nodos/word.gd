extends Node2D

# Variables del juego
var time_left: float = 60.0
var running: bool = true
var score_player1: int = 0
var score_player2: int = 0

# Constantes de posición inicial
const PLAYER1_INITIAL_POS = Vector2(100, 300)
const PLAYER2_INITIAL_POS = Vector2(700, 300)
const BALL_INITIAL_POS = Vector2(400, 300)
const SLIDE_VELOCITY = 500

# Referencias a los nodos de sonido
var goal_sound : AudioStreamPlayer
var end_game_sound : AudioStreamPlayer

# Fuerza de la pelota después de un gol
const GOAL_VELOCITY = Vector2(300, -750)  # Fuerza hacia arriba

func _ready():
	# Configura la interfaz y el estado inicial
	update_time_display()
	update_score()
	set_label_colors(Color(0, 0, 0))
	running = true

	# Conecta las señales de los arcos
	$ArcoPlayer1.connect("body_entered", Callable(self, "_on_arco_player1_body_entered"))
	$ArcoPlayer2.connect("body_entered", Callable(self, "_on_arco_player2_body_entered"))

	# Configura las propiedades físicas de los objetos
	set_physics_properties()

	# Referencias a los sonidos de goles y fin de juego
	goal_sound = $GoalSound
	end_game_sound = $EndGameSound

func _process(delta: float) -> void:
	# Control del temporizador del juego
	if running:
		time_left -= delta
		if time_left <= 0:
			time_left = 0
			running = false
			update_time_display("Tiempo: 00:00")
			end_game()
		else:
			update_time_display()

# Acción al comenzar el juego
func _on_StartButton_pressed() -> void:
	running = true

# Acción al detener el juego
func _on_StopButton_pressed() -> void:
	running = false

# Acción al reiniciar el juego
func _on_ResetButton_pressed() -> void:
	# Reinicia el juego a su estado inicial
	running = false
	time_left = 60.0
	update_time_display()
	reset_score()
	reset_game()

# Actualiza el tiempo en el HUD
func update_time_display(custom_text: String = ""):
	$Tiempo.text = custom_text if custom_text != "" else "Tiempo: " + format_time(time_left)

# Formato de tiempo para mostrar minutos y segundos
func format_time(seconds: float) -> String:
	var minutes = int(seconds / 60)
	var secs = int(seconds) % 60
	return "%02d:%02d" % [minutes, secs]

# Acción al terminar el juego
func end_game() -> void:
	# Reproducir sonido de fin de juego
	get_tree().change_scene_to_file("res://Menu_Escenas/control.tscn")

# Manejo de colisión con los arcos
func _on_arco_player1_body_entered(body):
	if body.name == "pelota":
		score_player2 += 1
		update_score()
		reset_game()

func _on_arco_player2_body_entered(body):
	if body.name == "pelota":
		score_player1 += 1
		update_score()
		reset_game()

# Actualiza la puntuación en la interfaz
func update_score():
	$ScoreLabelPlayer1.text = str(score_player1)
	$ScoreLabelPlayer2.text = str(score_player2)

# Reinicia la puntuación
func reset_score():
	score_player1 = 0
	score_player2 = 0
	update_score()

# Colores de los labels
func set_label_colors(color: Color):
	$ScoreLabelPlayer1.modulate = color
	$ScoreLabelPlayer2.modulate = color

# Reinicia la posición de la pelota y jugadores
func reset_ball_position():
	var pelota = $pelota
	if pelota:
		pelota.position = BALL_INITIAL_POS
		if pelota is RigidBody2D:
			# Resetea la velocidad de la pelota
			pelota.linear_velocity = Vector2.ZERO
			pelota.angular_velocity = 0
			# Aplica la velocidad hacia arriba
			pelota.linear_velocity = GOAL_VELOCITY  # Esta es la velocidad que impulsa la pelota hacia arriba

func reset_player_positions():
	reset_position($player, PLAYER1_INITIAL_POS)
	reset_position($player2, PLAYER2_INITIAL_POS)

# Utilidad para reiniciar la posición de un jugador
func reset_position(player, initial_pos: Vector2):
	if player:
		player.position = initial_pos
		if player is RigidBody2D:
			player.linear_velocity = Vector2.ZERO
			player.angular_velocity = 0

# Reinicia el juego
func reset_game():
	reset_ball_position()
	reset_player_positions()

# Configura propiedades físicas de pelota y jugadores
func set_physics_properties():
	set_player_physics_properties($player)
	set_player_physics_properties($player2)

# Configuración de las propiedades físicas de la pelota


# Configuración de las propiedades físicas de los jugadores
func set_player_physics_properties(player):
	if player and player is RigidBody2D:
		player.physics_material_override = create_material(0.5, 0.0)
		player.mass = 10.0
		player.gravity_scale = 1.0

# Crea un material con fricción y rebote específicos
func create_material(friction: float, bounce: float) -> PhysicsMaterial:
	var material = PhysicsMaterial.new()
	material.friction = friction
	material.bounce = bounce
	return material

# Pausa el juego y abre el menú de pausa
func _on_pausa_cel_pressed():
	get_tree().change_scene_to_file("res://Nodos/menu_pausa.tscn")

