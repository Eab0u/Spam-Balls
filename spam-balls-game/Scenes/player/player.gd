extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# movement
	if Input.is_action_pressed("left"):
		position.x -= delta * 450
	if Input.is_action_pressed("right"):
		position.x += delta * 450
	
	# shooting
	if Input.is_action_pressed("shoot"):
		pass
