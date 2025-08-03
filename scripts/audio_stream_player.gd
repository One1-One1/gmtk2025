extends AudioStreamPlayer

signal fadeOutFinished

@onready var musicMain = preload("res://assets/audio/Horror Game Main theme.wav")
@onready var musicLow = preload("res://assets/audio/BGM_LOW.wav")
@onready var musicMed = preload("res://assets/audio/BGM_MID.wav")
@onready var musicHigh = preload("res://assets/audio/BGM_HIGH.wav")


func play_music(music:AudioStream, volume = 0.0):
	if stream == music:
		return
	stream = music
	volume_db = volume
	play()

func bgmFadeOut(delta: float):
	volume_db -= 60*delta
	if volume_db <= -60:
		volume_db = -60
		fadeOutFinished.emit()

func bgmFadeIn(delta:float):
	volume_db += 60*delta
	if volume_db >= 0:
		volume_db = 0
	
	
