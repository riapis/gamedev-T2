extends Node2D

@onready var timer = $Timer

func _on_body_entered(body: CharacterBody2D):
	print("You died!")
	timer.start()
	

func _on_timer_timeout():
	get_tree().reload_current_scene()
