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
@onready var p = $heart



@export var inv = []
@export var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	inv = [a, b, c, d, e, f, g, h, j, k, l, m, n, o, p]
	i = 0
	#print(inv[i].name)#scale = 1.2
	inv[i].scale.x = 1.2
	inv[i].scale.y = 1.2

func _input(event):
	if event.is_action_pressed("click"):
		#welcome scroll
		if(i == 1):
			get_tree().change_scene_to_file("res://Scenes/welcome_scroll.tscn")
			
		#floor and shelf scrool
		elif(i == 3):
			get_tree().change_scene_to_file("res://Scenes/2_part_scroll.tscn")
		
		#room 2 scroll
		elif(i == 8):
			get_tree().change_scene_to_file("res://Scenes/rm_2_scroll.tscn")
			
		#glypth cheat cheat
		elif(i == 9):
			get_tree().change_scene_to_file("res://Scenes/cheat_cheat.tscn")
			
		#rm3 rules
		elif(i == 12):
			get_tree().change_scene_to_file("res://Scenes/r_3_scroll_rules.tscn")
			
		#rm3 answers
		elif(i == 13):
			get_tree().change_scene_to_file("res://Scenes/r_3_answers.tscn")
		
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
