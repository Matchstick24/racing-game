extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Gamemanager.s > 59:
		Gamemanager.m += 1
		Gamemanager.s = 0
	if Gamemanager.ms > 9:
		Gamemanager.s += 1
		Gamemanager.ms = 0
	set_text(str(Gamemanager.m)+":"+str(Gamemanager.s)+":"+str(Gamemanager.ms))

func _on_timer_timeout():
	if Gamemanager.timerrunning == true:
		Gamemanager.ms += 1
