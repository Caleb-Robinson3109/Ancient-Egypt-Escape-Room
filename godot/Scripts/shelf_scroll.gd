extends Node2D
@onready var shelf_scroll = $"."
@onready var inv = $"../../inventory/room1_scroll2_shelf"

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			#add the scroll to the bag
			Global.room1_has_shelf_scroll = true
			if(Global.room1_has_floor_scroll):
				Global.room1_has_both_scroll_parts = true
			shelf_scroll.visible = false
			inv.visible = true
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mouse):
		if(bigger):
			shelf_scroll.scale.x = shelf_scroll.scale.x + 0.005
			shelf_scroll.scale.y = shelf_scroll.scale.y + 0.005
			if(shelf_scroll.scale.x >= 1.2):
				bigger = false
		else:
			shelf_scroll.scale.x = shelf_scroll.scale.x - 0.005
			shelf_scroll.scale.y = shelf_scroll.scale.y - 0.005
			if(shelf_scroll.scale.x <= 1):
				bigger = true


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
