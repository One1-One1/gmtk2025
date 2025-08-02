extends Control

@export var cursorDef:Texture
@onready var main3D:Node3D = $main3d
var roomMain:Node3D
var roomNum:String = "0"

func _ready():
	Input.set_custom_mouse_cursor(cursorDef)
	print(Weirdness.weird)

func unloadLevel():
	if(is_instance_valid(roomMain)):
		roomMain.queue_free()
	roomMain = null
	
func loadLevel(roomName:String):
	unloadLevel()
	var roomPath := "res://scenes/rooms/%s.tscn" % roomName
	var roomResource  := load(roomPath)
	if (roomResource):
		roomMain = roomResource.instantiate()
		main3D.add_child(roomMain)
		
func _on_start_pressed():
	loadLevel("room%s" % roomNum)
	$startmenu.hide()

func _on_quit_pressed():
	get_tree().quit()
