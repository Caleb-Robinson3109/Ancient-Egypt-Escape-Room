extends Node

#from the frist scroll
@onready var scroll_1 = $room1/scroll1
@onready var scroll1_inv = $inventory/room1_scroll1

#from the first chest
@onready var chest_1_closed = $room1/chest1_closed
@onready var chest_1_open = $room1/chest1_open
@onready var salt_inv = $inventory/salt

#from floor boards
@onready var floor_board = $room1/floor_board
#@onready var room_1_scroll_2_floor = $inventory/room1_scroll2_floor
@onready var room_1_scroll_2_floor_shelf = $inventory/room1_scroll2_floor_shelf

#from shelf scroll
@onready var shelf_scroll = $room1/shelf_scroll
#@onready var room_1_scroll_2_shelf = $inventory/room1_scroll2_shelf

#from second chest in room1
@onready var chest_2_closed = $room1/chest2_closed
@onready var chest_2_open = $room1/chest2_open
@onready var frank = $inventory/frank
@onready var beeswax = $inventory/beeswax

#from linen
@onready var linen = $room1/linen
@onready var linen_inv = $inventory/linen

#complete stachue
@onready var key = $inventory/key
@onready var salt_stat = $room1/stat1/salt
@onready var linen_stat = $room1/stat2/linen
@onready var bee_stat = $room1/stat2/bee
@onready var frank_stat = $room1/stat2/frank
@onready var scarcoph_closed = $room1/scarcoph_closed
@onready var scarcoph_open = $room1/scarcoph_open
@onready var scarcoph_key = $room1/scarcoph_key

#gets key
#scarcoph_key
@onready var skey = $inventory/key

#unlocked door
#skey

#gets first scroll room 2
@onready var r2_scroll_1 = $room2/scroll1
@onready var room_2_scroll = $inventory/room2_scroll

#cracked vase
@onready var crack_2 = $room2/vase/crack2
@onready var cheat = $room2/vase/cheat


#picked up cheat cheat
#cheat
@onready var cheat_inv = $inventory/cheat

#hyro1
@onready var hyro_1 = $room2/hyro1

#hyro2
@onready var hyro_2 = $room2/hyro2

#hyro3
@onready var hyro_3 = $room2/hyro3

#r2key
@onready var r_2_key = $inventory/r2Key

#feather_hyro
@onready var hyro_feather = $room2/hyro_feather
@onready var feather = $inventory/feather

#rm3 scrools
@onready var scroll_1_rm_3 = $inventory/scroll1_rm3
@onready var scroll_2_rm_3 = $inventory/scroll2_rm3
@onready var scroll_rm_3 = $room3/scroll



# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.room1_has_scroll1):
		scroll_1.visible = false
		scroll1_inv.visible = true
	if(Global.room1_chest1_unlocked):
		chest_1_closed.visible = false
		chest_1_open.visible = true
		salt_inv.visible = true
	if(Global.room1_has_floor_scroll):
		floor_board.visible = false
		#room_1_scroll_2_floor.visible = true
		room_1_scroll_2_floor_shelf.visible = true
	if(Global.room1_has_shelf_scroll):
		shelf_scroll.visible = false
		#room_1_scroll_2_shelf.visible = true
		room_1_scroll_2_floor_shelf.visible = true
	if(Global.has_frank):
		chest_2_closed.visible = false
		chest_2_open.visible = true
		frank.visible = true
		beeswax.visible = true
	if(Global.has_linen):
		linen.visible = false
		linen_inv.visible = true
	if(Global.complete_stat):
		scarcoph_closed.visible = false
		scarcoph_open.visible = true
		scarcoph_key.visible = true
	if(Global.has_skey):
		skey.visible = true
		scarcoph_key.visible = false
	if(Global.unlock_door):
		skey.visible = false
	if(Global.has_scroll_1_room2):
		r2_scroll_1.visible = false
		room_2_scroll.visible = true
	if(Global.cracked_vase):
		crack_2.visible
		cheat.visible = true
	if(Global.has_cheat_cheat):
		cheat.visible = false
		cheat_inv = true
	if(Global.has_hyro1):
		hyro_1.visible = false
	if(Global.has_hyro2):
		hyro_2.visible = false
	if(Global.has_hyro3):
		hyro_3.visible = false
	if(Global.has_hyro_key):
		hyro_1.visible = false
		hyro_2.visible = false
		hyro_3.visible = false
		r_2_key.visible = true
	if(Global.unlock_door2):
		r_2_key.visible = false
	if(Global.has_feather):
		hyro_feather.visible = false
		feather.visible = true
	if(Global.has_rm3_scrolls):
		scroll_rm_3.visible = false
		scroll_1_rm_3.visible = true
		scroll_2_rm_3.visible = true
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.complete_stat == false):
		if(Global.stachue1 == "salt" && Global.stachue2 == "linen" && Global.stachue3 == "beeswax" && Global.stachue4 == "frank"):
		#if(true):
			Global.complete_stat = true
			scarcoph_closed.visible = false
			scarcoph_open.visible = true
			scarcoph_key.visible = true
			
