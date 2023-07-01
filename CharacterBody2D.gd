extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_dir_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down") #gets the direction vector
	velocity = input_dir_vector * speed  #moves the player based on dir_vector and speed

func _physics_process(delta):
	look_at(get_global_mouse_position())  # allows for the sprite to look torwards the curosr
	get_input() 
	move_and_slide() # not defined yet
