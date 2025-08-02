extends Control

@export var cursorDef:Texture

var roomMain:Node3D
var roomNum:String = "0"

func _ready():
	Input.set_custom_mouse_cursor(cursorDef)
	print(Weirdness.weird)
	var main3D:Node3D = $main3d
		
func _on_start_pressed():
	Weirdness.changeScene("room0")
	$startmenu.hide()

func _on_quit_pressed():
	get_tree().quit()
