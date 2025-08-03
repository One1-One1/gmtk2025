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
	if InteractionNum == 1:
		bedCheck()
		Transition.transition()
		await Transition.on_transition_finished
		roomNext()
	elif InteractionNum == 2:
		doorCheck()
		Transition.transition()
		await Transition.on_transition_finished
		roomNext()
	elif InteractionNum == 3:
		Dialoge.dialogue("abnormality_sloth")
	elif InteractionNum == 4:
		Dialoge.dialogue("abnoGreed")
	elif InteractionNum == 5:
		Dialoge.dialogue("abnoEnvy")
	elif InteractionNum == 6:
		Dialoge.dialogue("abnolust")
	elif InteractionNum == 7:
		Dialoge.dialogue("abnopride")
	elif InteractionNum == 8:
		Dialoge.dialogue("abnoglut")
	elif InteractionNum == 9:
		Dialoge.dialogue("abnowrath")
	
	
func roomNext():
	if Weirdness.progress >= 9:
		get_tree().change_scene_to_file("res://scenes/endingscreen.tscn")
	elif correct == false:
		nextRoom = JSON.stringify(Weirdness.roomID)
		Weirdness.changeScene("room%s" % nextRoom)
	elif correct == true:
		Weirdness.randomRoom()
		nextRoom = JSON.stringify(Weirdness.roomID)
		Weirdness.changeScene("room%s" % nextRoom)
		print(nextRoom)


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

		
