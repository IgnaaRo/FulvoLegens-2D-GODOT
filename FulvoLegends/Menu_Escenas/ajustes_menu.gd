extends Control

func _ready():
	
	var slider = get_node("VBoxContainer/Volumen")  
	

	var initial_volume = AudioServer.get_bus_volume_db(0)
	print("Volumen inicial del bus 0:", initial_volume)
	
	
	slider.value = clamp(initial_volume, -80, 0)
	
	
	if not slider.is_connected("value_changed", Callable(self, "_on_volumen_value_changed")):
		slider.connect("value_changed", Callable(self, "_on_volumen_value_changed"))


func _on_volumen_value_changed(value):
	
	value = clamp(value, -80, 0)
	
	
	AudioServer.set_bus_volume_db(0, value)
	
	
	print("Nuevo volumen ajustado:", value)



func _on_option_button_item_selected(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1600,900))
		2:
			DisplayServer.window_set_size(Vector2i(1280,720))


func _on_mute_toggled(toggled_on):
	AudioServer.set_bus_mute(0, toggled_on)
