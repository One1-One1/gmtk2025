extends Node

class_name Interactable
@export var InteractionNum:int

func get_interaction_text():
	return "Interact"
	
func interact():
	if InteractionNum == 0:
		print("Interacted!")
	elif InteractionNum == 1:
		print("2")
		roomCheck.bedCheck()
	elif InteractionNum == 2:
		roomCheck.doorCheck()
	
