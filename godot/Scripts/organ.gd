extends Node2D
@onready var crack_0 = $crack0
@onready var crack_1 = $crack1
@onready var crack_2 = $crack2
@onready var heart = $heart
@onready var inv = $"../../inventory/heart"
@onready var shart = $"../../shart"


var crack = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if(crack == 0):
		crack = 1
		crack_0.visible = false
		crack_1.visible = true
		shart.play()
	elif(crack == 1):
		crack = 2
		crack_1.visible = false
		crack_2.visible = true
		heart.visible = true
		shart.play()
	else:
		Global.has_heart = true
		inv.visible = true
		heart.visible = false
		
