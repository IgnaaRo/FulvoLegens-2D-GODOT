extends CharacterBody2D

# Variables del juego
var speed := 550
var jump_force := -500
var gravity := 1500


var direction := Vector2.ZERO


var is_on_ground := false


@onready var pata = $Pata  

func _ready():
	
	pass

func _physics_process(delta):
	
	direction.x = 0
	
	
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	
	
	direction = direction.normalized()
	
	velocity.x = direction.x * speed
	
	
	velocity.y += gravity * delta
	
	
	is_on_ground = is_on_floor()
	
	
	if is_on_ground and Input.is_action_just_pressed("jump"):
		velocity.y = jump_force
	
	
	move_and_slide()


