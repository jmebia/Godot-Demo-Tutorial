extends KinematicBody2D

# const WALK_SPEED = 200

# speed of the player character while in motion
export var WALK_SPEED = 200

# a vector2 property that will store the player's x and y position
var motion = Vector2()

# a built-in function that runs every physics frame
func _physics_process(delta):
	
	# below are the inputs for moving the player horizontally
	if Input.is_action_pressed("ui_left"):
		motion.x = -WALK_SPEED 
	elif Input.is_action_pressed("ui_right"):
		motion.x = WALK_SPEED
	else:
		motion.x = 0 # stop the player from moving horizontally when nothing is pressed
		
	# below are the inputs for moving the player vertically
	if Input.is_action_pressed("ui_down"):
		motion.y = WALK_SPEED
	elif Input.is_action_pressed("ui_up"):
		motion.y = -WALK_SPEED
	else:
		motion.y = 0 # stop the player from moving vertically when nothing is pressed
	
	# takes in a vector2 value and moves and collides the kinematicbody
	move_and_slide(motion)
