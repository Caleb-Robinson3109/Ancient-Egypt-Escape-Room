extends Node2D
@onready var inventory = $"../../inventory"
@onready var salt = $"."
@onready var salt_tex = $salt
@onready var salt_inv = $"../../inventory/salt"
@onready var frank = $"../../inventory/frank"
@onready var beeswax = $"../../inventory/beeswax"
@onready var linen = $"../../inventory/linen"
@onready var frank_tex = $frank
@onready var bee_tex = $bee
@onready var linen_tex = $linen

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			#hand
			if(inventory.i == 0):
				if(Global.stachue2 == ""):
					pass
				else:
					if(Global.stachue2 == "salt"):
						salt_tex.visible = false
						salt_inv.visible = true
					elif(Global.stachue2 == "frank"):
						frank_tex.visible = false
						frank.visible = true
					elif(Global.stachue2 == "beeswax"):
						bee_tex.visible = false
						beeswax.visible = true
					elif(Global.stachue2 == "linen"):
						linen_tex.visible = false
						linen.visible = true
			#salt
			elif(inventory.i == 2):
				salt_tex.visible = true
				salt_inv.visible = false
				inventory.inv[2].scale.x = 1
				inventory.inv[2].scale.y = 1
				inventory.inv[0].scale.x = 1.2
				inventory.inv[0].scale.y = 1.2
				inventory.i = 0
				Global.stachue2 = "salt"
			#frank bee lin
			elif(inventory.i == 5):
				frank_tex.visible = true
				frank.visible = false
				inventory.inv[5].scale.x = 1
				inventory.inv[5].scale.y = 1
				inventory.inv[0].scale.x = 1.2
				inventory.inv[0].scale.y = 1.2
				inventory.i = 0
				Global.stachue2 = "frank"
			elif(inventory.i == 6):
				bee_tex.visible = true
				beeswax.visible = false
				inventory.inv[6].scale.x = 1
				inventory.inv[6].scale.y = 1
				inventory.inv[0].scale.x = 1.2
				inventory.inv[0].scale.y = 1.2
				inventory.i = 0
				Global.stachue2 = "beeswax"
			elif(inventory.i == 7):
				linen_tex.visible = true
				linen.visible = false
				inventory.inv[7].scale.x = 1
				inventory.inv[7].scale.y = 1
				inventory.inv[0].scale.x = 1.2
				inventory.inv[0].scale.y = 1.2
				inventory.i = 0
				Global.stachue2 = "linen"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
