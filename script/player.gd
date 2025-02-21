extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var sprite = $Sprite2D

func _physics_process(delta):

	# Set movement horizontally
	var direction_x := Input.get_axis("move_left", "move_right")
	
	if direction_x < 0:
		sprite.flip_h = true
	elif direction_x > 0:
		sprite.flip_h = false
	
	# Move left or right
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Set movement vertically 
	var direction_y := Input.get_axis("move_up", "move_down")
	
	# Move up or down
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
