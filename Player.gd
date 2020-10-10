extends KinematicBody2D
export var speed = 200
export var gravity = 200
var move_direction = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
#func _ready():

func _physics_process(delta):
	MovementLoop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func MovementLoop():
	move_direction.x = int(Input.is_action_pressed("Right")) - int(Input.is_action_pressed("Left")) # int() converts the boolean into a number of 1 or 0
#	move_direction.y = int(Input.is_action_pressed("Down"))
	var motion = move_direction * speed
	motion.y = gravity
	move_and_slide(motion)
