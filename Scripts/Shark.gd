extends Area2D

var count = 0

const DEFAULT_SPEED = 400

var speed = DEFAULT_SPEED

@onready var initialPosition = position

var direction = Vector2.LEFT

func _process(delta):
	speed += delta * 1
	position += speed * delta * direction
	
func reset():
	count += 1
	
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
