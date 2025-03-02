extends Node2D
@onready var floor_board = $"."
@onready var crack_1 = $crack1
@onready var crack_2 = $crack2
@onready var crack_3 = $crack3
@onready var inv = $"../../inventory/room1_scroll2_floor"

var crack: int = 0
@export var mouse: bool = false
var bigger = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			if(crack == 0):
				crack = crack + 1
				crack_1.visible = false
			elif(crack == 1):
				crack = crack + 1
				crack_2.visible = false
			elif(crack == 2):
				crack = crack + 1
				crack_3.visible = false
			else:
				Global.room1_has_floor_scroll = true
				if(Global.room1_has_shelf_scroll):
					Global.room1_has_both_scroll_parts = true
				inv.visible = true
				floor_board.visible = false
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
