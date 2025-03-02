extends Node
@onready var feather_scale = $"../feather_scale"
@onready var heart_sacle = $"../heart_sacle"
@onready var heart = $"../../inventory/heart"
@onready var feather = $"../../inventory/feather"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_heart_pressed():
	if(heart.visible == true):
		heart_sacle.visible = true
		heart.visible = false


func _on_feather_pressed():
	if(feather.visible == true):
		feather_scale.visible = true
		feather.visible = false
