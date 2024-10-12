extends VehicleBody3D


const MAX_STEER = 0.8
const ENGINE_POWER = 150

@onready var camerapivot = $Camerapivot
@onready var camera_3d = $Camerapivot/Camera3D
@onready var reversecamera = $Camerapivot/reversecamera

var look_at



# Called when the node enters the scene tree for the first time.
func _ready():
	look_at = global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis("ui_right", "ui_left") * MAX_STEER, delta * 2.5)
	engine_force = Input.get_axis("ui_down", "ui_up") * ENGINE_POWER
	camerapivot.global_position = camerapivot.global_position.lerp(global_position, delta * 20.0)
	camerapivot.transform = camerapivot.transform.interpolate_with(transform, delta * 5.0)
	look_at = look_at.lerp(global_position + linear_velocity, delta * 5.0)
	camera_3d.look_at(look_at)
	reversecamera.look_at(look_at)
	_check_camera_switch()
	
func _check_camera_switch():
	
		if linear_velocity.dot(transform.basis.z) > 0:
			camera_3d.current = true
		else :
			reversecamera.current = true
