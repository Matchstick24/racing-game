extends Area3D
var ms = 0
var s = 0
var m = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		Gamemanager.timerrunning = false
		get_tree().change_scene_to_file("res://control.tscn")
