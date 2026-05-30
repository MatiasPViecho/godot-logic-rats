extends Node2D
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_interact_area_area_entered(area: Area2D) -> void:
	if(area.is_in_group("player")):
		area.current_interactable = self;
	pass # Replace with function body.

func interact() -> void:
	print("test");


func _on_interact_area_area_exited(area: Area2D) -> void:
	if(area.is_in_group("player")):
		area.current_interactable = null;
