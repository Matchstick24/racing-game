extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_to_race_pressed():
	if Gamemanager.map1pressed == true :
		get_tree().change_scene_to_file("res://map_1.tscn")
	if Gamemanager.map2pressed == true :
		get_tree().change_scene_to_file("res://track2.tscn")
	if Gamemanager.map3pressed == true :
		get_tree().change_scene_to_file("res://track_3.tscn")
	
	Gamemanager.timerrunning = true
