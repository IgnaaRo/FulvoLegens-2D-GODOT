extends OptionButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func on_resolution_item_select(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1600,900))
		2:
			DisplayServer.window_set_size(Vector2i(1280,720))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
