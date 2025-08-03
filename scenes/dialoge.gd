extends CanvasLayer

@onready var animPlayer = $AnimationPlayer
@onready var lable = $AnimationPlayer/Label

signal onAnimEnd

func _ready():
	lable.visible = false

func dialogue(dialogueName):
	lable.visible = true
	animPlayer.play(dialogueName)
	onAnimEnd.emit()
	
