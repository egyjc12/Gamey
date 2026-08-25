extends Node2D


@onready var tilemap = $TileMapLayer

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var mouse_pos = get_global_mouse_position()
			var tile_pos = tilemap.local_to_map(
				tilemap.to_local(mouse_pos)
			)

			print("Clicked tile: ", tile_pos)
