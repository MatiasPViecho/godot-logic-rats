extends Node
@onready var sprite_2d: Sprite2D = $"../Sprite2D"
@export var speed = 300;
@onready var player: Node2D = $".."
@onready var area_2d_2: Area2D = $"../Area2D2"

var screen_size;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport().get_visible_rect().size;

func interactWithCurrent():
	var current = area_2d_2.getCurrentInteractable();
	if(current == null): print("no obj");
	else: current.interact();
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		interactWithCurrent();
	var velocity = Vector2.ZERO;
	if Input.is_action_pressed("move_right"):
		velocity.x += 1;
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1;
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1;
	if Input.is_action_pressed("move_down"):
		velocity.y += 1;
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed;
	player.position += velocity * delta;
	player.position = player.position.clamp(Vector2.ZERO, screen_size);

	var angle = Vector2(velocity.y, -velocity.x).angle();
	player.rotation = round(angle / (PI / 4)) * (PI/4);
	pass
