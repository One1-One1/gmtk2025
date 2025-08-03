extends Node

var weird:bool = false
var progress:int = 0
var roomID:int = 0
var roomRandom = RandomNumberGenerator.new()

#later
var memento1:bool = false
var memento2:bool = false
var memento3:bool = false
var memento4:bool = false
var memento5:bool = false
var memento6:bool = false
var memento7:bool = false

func randomRoom():
	if progress == 1:
		
		roomID = roomRandom.randi_range(1, 2)
	elif progress == 2:
		
		roomID = roomRandom.randi_range(3, 4)
	elif progress == 3:
		
		roomID = roomRandom.randi_range(5, 6)
	elif progress == 4:
		
		roomID = roomRandom.randi_range(7, 8)
	elif progress == 5:
		
		roomID = roomRandom.randi_range(9, 10)
	elif progress == 6:
		
		roomID = roomRandom.randi_range(11, 12)
	elif progress == 7:
		
		roomID = roomRandom.randi_range(13, 14)
	elif progress == 8:
		
		roomID = roomRandom.randi_range(15, 16)
		

func changeScene(roomName):
	var roomPath = "res://scenes/rooms/" + roomName + ".tscn"
	get_tree().change_scene_to_file(roomPath)
