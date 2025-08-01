extends Control

@export var CursorL:Texture
@export var CursorR:Texture
@export var CursorDef:Texture
@export var camera:Camera3D
@export var path:PathFollow3D
@onready var lButton:Button = $left
@onready var rButton:Button = $right

func _on_left_pressed():
	path.progress_ratio -= 0.25
	
func _on_right_pressed():
	path.progress_ratio += 0.25 


func _on_left_mouse_entered():
	Input.set_custom_mouse_cursor(CursorL)
func _on_left_mouse_exited():
	Input.set_custom_mouse_cursor(CursorDef)
func _on_right_mouse_entered():
	Input.set_custom_mouse_cursor(CursorR)
func _on_right_mouse_exited():
	Input.set_custom_mouse_cursor(CursorDef)


func _on_button_pressed():
	Weirdness.progress +=1
	print(Weirdness.progress)


func _on_button_2_pressed():
	if Weirdness.weird == true:
		Weirdness.weird = false
		print("normal")
	else:
		Weirdness.weird = true
		print("abnormal")
