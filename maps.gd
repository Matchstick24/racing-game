extends Control


func _on_map_1_pressed():
	get_tree().change_scene_to_file("res://map_1.tscn")
	Gamemanager.map1pressed = true


func _on_map_2_pressed():
	get_tree().change_scene_to_file("res://track2.tscn")
	Gamemanager.map2pressed = true


func _on_map_3_pressed():
	get_tree().change_scene_to_file("res://track_3.tscn")
	Gamemanager.map3pressed = true


func _on_map_4_pressed():
	Gamemanager.map4pressed = true
