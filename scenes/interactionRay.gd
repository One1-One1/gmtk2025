extends Camera3D

@onready var intRayCast:RayCast3D = $interactionRay
var mousePos:Vector2

func _process(delta):
	mousePos = get_viewport().get_mouse_position()
	intRayCast.target_position = project_local_ray_normal(mousePos) * 100
	intRayCast.force_raycast_update()
