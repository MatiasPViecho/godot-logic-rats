extends Area2D

var current_interactable: Node2D = null;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func getCurrentInteractable() -> Node2D:
	return current_interactable;
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
