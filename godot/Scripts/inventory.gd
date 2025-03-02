extends Node2D

@onready var a = $hand
@onready var b = $room1_scroll1
@onready var c = $salt
@onready var d = $room1_scroll2_floor_shelf
@onready var e = $frank
@onready var f = $beeswax
@onready var g = $linen
@onready var h = $key
@onready var j = $room2_scroll
@onready var k = $cheat
@onready var l = $r2Key
@onready var m = $feather
@onready var n = $scroll1_rm3
@onready var o = $scroll2_rm3



@export var inv = []
@export var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	inv = [a, b, c, d, e, f, g, h, j, k, l, m, n, o]
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
