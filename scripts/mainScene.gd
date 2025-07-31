extends Control

@onready var main3D:Node3D = $main3d
var roomMain:Node3D

func unloadLevel():
	if(is_instance_valid(roomMain)):
		roomMain.queue_free()
	roomMain = null
	
func loadLevel(roomName:String):
	unloadLevel()
	var roomPath := "res://scenes/rooms/%s.tscn" % roomName
	var roomResource  := load(roomPath)
	if (roomResource):
		roomMain = roomResource.instance()
		main3D.add_child(roomMain)
