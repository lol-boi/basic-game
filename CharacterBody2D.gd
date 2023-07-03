extends CharacterBody2D
	
@export var speed = 400
@export var Bullet: PackedScene
@export var actual_rate = 0.2
var timer = 0

func get_input():
	var input_dir_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down") #gets the direction vector
	velocity = input_dir_vector.normalized() * speed  #moves the player based on dir_vector and speed

func _physics_process(delta):
	timer +=delta
	get_input() 
	if Input.get_action_raw_strength("Shoot") && timer >=actual_rate :
		var me = Bullet.instantiate()
		add_sibling(me)
		me.global_position = get_node("Bulletpos").get("global_position")
		me.set("ar_dr", (get_global_mouse_position() - self.global_position).normalized())
		timer = 0
	look_at(get_global_mouse_position())  # allows for the sprite to look torwards the curosr
	move_and_slide() # not defined yet
