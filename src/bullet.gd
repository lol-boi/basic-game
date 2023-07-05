extends Area2D

const speed = 800.0
var ar_dr = Vector2(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.translate(ar_dr*speed*delta)
