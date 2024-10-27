extends CharacterBody2D

const GRAVITY: float = 600.0
var power: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	velocity.y += GRAVITY * delta
	
	if Input.is_action_just_pressed("fly"):
		velocity.y = -power
	
	move_and_slide()
