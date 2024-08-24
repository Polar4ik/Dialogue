extends CharacterBody2D


var speed := 100.0
var accel := 10.0

func _physics_process(_delta: float) -> void:
	move()
	move_and_slide()

func move() -> void:
	var dir = Input.get_vector("left", "right", "up", "down").normalized()
	
	velocity.x = move_toward(velocity.x, dir.x * speed, accel)
	velocity.y = move_toward(velocity.y, dir.y * speed, accel)
