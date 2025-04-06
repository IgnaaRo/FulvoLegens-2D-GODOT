extends Area2D

# Determina a quién pertenece el arco
@export var is_player1_goal: bool

# Señal para enviar el evento de gol
signal goal_scored(is_for_player1: bool)

func _ready():
	# Conecta la señal para detectar cuando la pelota entra al área usando Callable
	self.connect("body_entered", Callable(self, "_on_body_entered"))

# Detecta cuando la pelota entra en el arco
func _on_body_entered(body):
	if body.name == "pelota":
		# Emite la señal indicando quién debe recibir el gol
		emit_signal("goal_scored", is_player1_goal)
