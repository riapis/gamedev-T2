extends Node2D

const SPEED = 150

var direction = -1

@onready var raycastr = $RayCastR
@onready var raycastl = $RayCastL
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if raycastr.is_colliding():
		direction = -1
	if raycastl.is_colliding():
		direction = 1
	
	position.x += direction * SPEED * delta
