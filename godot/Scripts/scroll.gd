extends Node2D
@onready var scroll = $"."
@onready var scroll_1_rm_3 = $"../../inventory/scroll1_rm3"
@onready var scroll_2_rm_3 = $"../../inventory/scroll2_rm3"
@export var mouse: bool = false
var bigger: bool = true
@onready var paper = $"../../paper"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			Global.has_rm3_scrolls = true
			scroll.visible = false
			scroll_1_rm_3.visible = true
			scroll_2_rm_3.visible = true
			paper.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mouse):
		if(bigger):
			scroll.scale.x = scroll.scale.x + 0.005
			scroll.scale.y = scroll.scale.y + 0.005
			if(scroll.scale.x >= 1.2):
				bigger = false
		else:
			scroll.scale.x = scroll.scale.x - 0.005
			scroll.scale.y = scroll.scale.y - 0.005
			if(scroll.scale.x <= 1):
				bigger = true


func _on_area_2d_mouse_entered():
	mouse = true

func _on_area_2d_mouse_exited():
	mouse = false
