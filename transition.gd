extends CanvasLayer

signal on_transition_finished

@onready var colorRect = $ColorRect
@onready var AnimPlayer = $AnimationPlayer

func _ready():
	colorRect.visible = false
	AnimPlayer.animation_finished.connect(on_anim_finished)
	
func on_anim_finished(animName):
	if animName == "fade_to_black":
		on_transition_finished.emit()
		AnimPlayer.play("fade_to_normal")
	elif animName == "fade_to_normal":
		colorRect.visible = false
func transition():
	colorRect.visible = true
	AnimPlayer.play("fade_to_black")
