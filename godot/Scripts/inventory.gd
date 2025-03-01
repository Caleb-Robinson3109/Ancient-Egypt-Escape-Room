extends Node2D

@onready var hand = $hand
@onready var room_1_scroll_1 = $room1_scroll1
@onready var salt = $salt
@onready var room_1_scroll_2_floor = $room1_scroll2_floor
@onready var room_1_scroll_2_shelf = $room1_scroll2_shelf
@onready var frank = $frank
@onready var beeswax = $beeswax
@onready var linen = $linen


@export var inv = []
@export var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	inv = [hand, room_1_scroll_1, salt, room_1_scroll_2_floor, room_1_scroll_2_shelf, frank, beeswax, linen]
	i = 0
	#print(inv[i].name)#scale = 1.2
	inv[i].scale.x = 1.2
	inv[i].scale.y = 1.2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("up"):
		inv[i].scale.x = 1
		inv[i].scale.y = 1
		if(i == inv.size() - 1):
			i = 0
		else:
			i = i + 1
		while(inv[i].visible == false):
			if(i == inv.size() - 1):
				i = 0
			else:
				i = i + 1
		inv[i].scale.x = 1.2
		inv[i].scale.y = 1.2
	if event.is_action_pressed("down"):
		inv[i].scale.x = 1
		inv[i].scale.y = 1
		if(i == 0):
			i = inv.size() - 1
		else:
			i = i - 1
		while(inv[i].visible == false):
			if(i == 0):
				i = inv.size() - 1
			else:
				i = i - 1
		inv[i].scale.x = 1.2
		inv[i].scale.y = 1.2
