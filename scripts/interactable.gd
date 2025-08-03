extends Node

class_name Interactable
@export var InteractionNum:int
var nextRoom:String
var correct := false
@onready var doorsfx = $"../AudioStreamPlayer3D"
@onready var bedsfx = $"../AudioStreamPlayer3D"
@onready var current_scene = get_tree().current_scene

func get_interaction_text():
	return "Interact"
	
func interact():
	if InteractionNum == 0:
		print("Interacted!")
	elif InteractionNum == 1:
		bedCheck()
		Transition.transition()
		await Transition.on_transition_finished
		roomNext()
	elif InteractionNum == 2:
		doorCheck()
		Transition.transition()
		await Transition.on_transition_finished
		roomNext()
	
func roomNext():
	if correct == true:
		Weirdness.randomRoom()
		nextRoom = JSON.stringify(Weirdness.roomID)
		print(nextRoom)
		Weirdness.changeScene("room%s" % nextRoom)
	else:
		nextRoom = JSON.stringify(Weirdness.roomID)
		Weirdness.changeScene("room%s" % nextRoom)


func bedCheck() -> void:
		bedsfx.play()
		if current_scene.isWeird == true:
			Weirdness.progress += 1
			correct = true
			print("bed win")
		else:
			Weirdness.progress = 0
			Weirdness.roomID = 0
			correct = false
			print("bed fail")
			
func doorCheck():
		doorsfx.play()
		if current_scene.isWeird == false:
			Weirdness.progress += 1
			correct = true
			print("door win")
		else:
			Weirdness.progress = 0
			Weirdness.roomID = 0
			correct = true
			print("door fail")

		
