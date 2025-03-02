extends Node
@onready var feather_scale = $"../feather_scale"
@onready var heart_sacle = $"../heart_sacle"
@onready var heart = $"../../inventory/heart"
@onready var feather = $"../../inventory/feather"
@onready var key = $"../../key"



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
		Global.complete_heart = true
		key.play()
		if(Global.complete_quiz && Global.complete_feather):
			get_tree().change_scene_to_file("res://Scenes/win.tscn")


func _on_feather_pressed():
	if(feather.visible == true):
		feather_scale.visible = true
		feather.visible = false
		Global.complete_feather = true
		key.play()
		if(Global.complete_quiz && Global.complete_heart):
			get_tree().change_scene_to_file("res://Scenes/win.tscn")
