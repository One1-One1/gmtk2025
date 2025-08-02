extends Node

class_name Interactable
@export var InteractionNum:int
var nextRoom:String
var correct := false

func get_interaction_text():
	return "Interact"
	
func interact():
	if InteractionNum == 0:
		print("Interacted!")
	elif InteractionNum == 1:
		bedCheck()
		roomNext()
	elif InteractionNum == 2:
		doorCheck()
		roomNext()
	
func roomNext():
	if correct == true:
		Weirdness.randomRoom()
		nextRoom = JSON.stringify(Weirdness.roomID)
		print(nextRoom)
		MainScene.loadLevel("room1")
	else:
		nextRoom = JSON.stringify(Weirdness.roomID)
		MainScene.loadLevel("room%s" % nextRoom)


func bedCheck() -> void:
		print("aaaa")
		if Weirdness.weird == true:
			Weirdness.progress += 1
			correct = true
			print("bed win")
		else:
			Weirdness.progress = 0
			Weirdness.roomID = 0
			correct = false
			print("bed fail")
			
func doorCheck():
		print("bbbb")
		if Weirdness.weird == false:
			Weirdness.progress += 1
			return true
			print("door win")
		else:
			Weirdness.progress = 0
			Weirdness.roomID = 0
			return false
			print("door fail")

		
