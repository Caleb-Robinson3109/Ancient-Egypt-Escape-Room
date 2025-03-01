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
@onready var room_1_scroll_2_floor = $inventory/room1_scroll2_floor

#from shelf scroll
@onready var shelf_scroll = $room1/shelf_scroll
@onready var room_1_scroll_2_shelf = $inventory/room1_scroll2_shelf

#from second chest in room1
@onready var chest_2_closed = $room1/chest2_closed
@onready var chest_2_open = $room1/chest2_open
@onready var frank = $inventory/frank
@onready var beeswax = $inventory/beeswax

#from linen
@onready var linen = $room1/linen
@onready var linen_inv = $inventory/linen




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
		room_1_scroll_2_floor.visible = true
	if(Global.room1_has_shelf_scroll):
		shelf_scroll.visible = false
		room_1_scroll_2_shelf.visible = true
	if(Global.has_frank):
		chest_2_closed.visible = false
		chest_2_open.visible = true
		frank.visible = true
		beeswax.visible = true
	if(Global.has_linen):
		linen.visible = false
		linen_inv.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
