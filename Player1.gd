extends CharacterBody2D

var movement = Vector2();
@export var score: int = 0;

func _process(_delta):
	if Input.is_action_pressed("player1_up"):
		movement.y = -100;
	elif Input.is_action_pressed("player1_down"):
		movement.y = 100;
	else:
		movement.y = 0;
		
	set_velocity(movement)
	move_and_slide();
