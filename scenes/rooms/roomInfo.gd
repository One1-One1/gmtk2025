extends Node3D

@export var isSpecial:bool
@export var isWeird:bool

func _ready():
	if Weirdness.progress >= 0 && isSpecial == false:
		GlobalAudioStreamPlayer.bgmFadeIn(0.1)
		GlobalAudioStreamPlayer.play_music(GlobalAudioStreamPlayer.musicLow)
	elif Weirdness.progress >= 3 && isSpecial == false:
		GlobalAudioStreamPlayer.bgmFadeIn(0.1)
		GlobalAudioStreamPlayer.play_music(GlobalAudioStreamPlayer.musicMed)
	elif Weirdness.progress >= 7 or isSpecial == true:
		GlobalAudioStreamPlayer.bgmFadeIn(0.1)
		GlobalAudioStreamPlayer.play_music(GlobalAudioStreamPlayer.musicHigh)
	elif Weirdness.progress >= 9 && isSpecial == false:
		GlobalAudioStreamPlayer.bgmFadeIn(0.1)
		GlobalAudioStreamPlayer.play_music(GlobalAudioStreamPlayer.musicMain)
	print(isWeird)
