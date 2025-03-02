extends Node2D
@onready var crack_1 = $crack1
@onready var crack_2 = $crack2
@onready var cheat = $cheat
@onready var inv = $"../../inventory/cheat"

@export var mouse: bool = false
var bigger: bool = true
var crack = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			if(crack == 0):
				crack = 1
				crack_1.visible = true
			elif(crack == 1):
				crack = 2
				crack_2.visible = true
			elif(crack == 2):
				crack = 3
				cheat.visible = true
				Global.cracked_vase = true
			else:
				inv.visible = true
				cheat.visible = false
				Global.has_cheat_cheat = true
func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
