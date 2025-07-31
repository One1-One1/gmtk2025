extends Control

@export var camera:Camera3D
@export var path:PathFollow3D
@onready var lButton:Button = $left
@onready var rButton:Button = $right

func _on_left_pressed():
	path.progress_ratio -= 0.25
	
func _on_right_pressed():
	path.progress_ratio += 0.25 
