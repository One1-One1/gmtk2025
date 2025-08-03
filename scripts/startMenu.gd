extends Control

@export var cursorDef:Texture
@onready var music = preload("res://assets/audio/Horror Game Main theme.wav")

var roomMain:Node3D
var roomNum:String = "0"

func _ready():
	Input.set_custom_mouse_cursor(cursorDef)
	print(Weirdness.weird)
	var main3D:Node3D = $main3d
	GlobalAudioStreamPlayer.play_music(GlobalAudioStreamPlayer.musicMain, -60)
	GlobalAudioStreamPlayer.bgmFadeIn(5)
		
func _on_start_pressed():
	GlobalAudioStreamPlayer.bgmFadeOut(0.1)
	Transition.transition()
	await Transition.on_transition_finished
	Weirdness.changeScene("room0")

func _on_quit_pressed():
	Transition.transition()
	await Transition.on_transition_finished
	get_tree().quit()
