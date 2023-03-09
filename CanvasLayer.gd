extends CanvasLayer


func _on_TextureRect_item_rect_changed():
	
	var height = get_viewport().size.y
	var width = get_viewport().size.x
	
	var ratio = width/height
	
	if ratio > .8 and ratio < 1.2:
		$TextureRect.texture = load("res://Damage_square.png")
	elif ratio <= 0.8:
		$TextureRect.texture = load("res://Damage_portrat.png")
	else:
		$TextureRect.texture = load("res://Damage_landscape.png")
