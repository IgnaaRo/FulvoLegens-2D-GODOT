extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Aquí puedes hacer inicializaciones si es necesario.

# Llamado cuando se presiona el botón "Jugar"
func _on_jugar_pressed():
	get_tree().change_scene_to_file("res://word.tscn")

# Llamado cuando se presiona el botón "Ajustes"
func _on_Ajustes_pressed():
	get_tree().change_scene_to_file("res://Menu_Escenas/ajustes_menu.tscn")

# Llamado cuando se presiona el botón "Salir"
func _on_salir_pressed():
	get_tree().quit()
