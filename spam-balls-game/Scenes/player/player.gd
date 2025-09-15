extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
var is_facing_right: bool
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# movement
	if Input.is_action_pressed("left"):
		position.x -= delta * 450
		
		if is_facing_right:
			$Guy.flip_h = true
			is_facing_right = false
		
	if Input.is_action_pressed("right"):
		position.x += delta * 450
		
		if !is_facing_right:
			$Guy.flip_h = false
			is_facing_right = true
	
	# shooting
	if Input.is_action_pressed("shoot"):
		pass
