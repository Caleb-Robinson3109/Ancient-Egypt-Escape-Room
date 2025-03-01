extends Node2D
@onready var inventory = $"../../inventory"
@onready var salt = $"."
@onready var salt_tex = $TextureRect
@onready var salt_inv = $"../../inventory/salt"
@onready var frank = $"../../inventory/frank"
@onready var beeswax = $"../../inventory/beeswax"
@onready var linen = $"../../inventory/linen"

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
				if(Global.stachue1 == ""):
					pass
				else:
					if(Global.stachue1 == "salt"):
						salt_tex.visible = false
						salt_inv.visible = true
					elif(Global.stachue1 == "frank"):
						#texture_rect.visible = false
						frank.visible = true
					elif(Global.stachue1 == "beeswax"):
						#texture_rect.visible = false
						beeswax.visible = true
					elif(Global.stachue1 == "linen"):
						#texture_rect.visible = false
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
				Global.stachue1 = "salt"
			"""
			otjer elements
			elif(inventory.i == 3):
				texture_rect.visible = true
				salt_inv.visible = false
				inventory.inv[2].scale.x = 1
				inventory.inv[2].scale.y = 1
				inventory.inv[0].scale.x = 1.2
				inventory.inv[0].scale.y = 1.2
				inventory.i = 0
				Global.stachue1 = "salt"
			"""
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
