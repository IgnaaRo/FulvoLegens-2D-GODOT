extends Button

func _ready():
	pass  # Puedes agregar inicializaciones aquí si es necesario.

func _on_pressed():
	get_tree().change_scene_to_file("res://menu_pausa.tscn")
