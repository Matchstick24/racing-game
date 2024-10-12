extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("you got "+str(Gamemanager.m)+":"+str(Gamemanager.s)+":"+str(Gamemanager.ms))
	Gamemanager.m = 0
	Gamemanager.s = 0
	Gamemanager.ms = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
