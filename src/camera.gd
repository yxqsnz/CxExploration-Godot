extends Camera
var duration := 0.1
onready var sun := $"../Sun"

	
func _input(event):
	if event is InputEventMouseButton:
		var tween := create_tween().set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_LINEAR)
		if event.is_action_pressed("mouse_wheel_up"):
			if self.fov-10 > 1:
				tween.tween_property(self, "fov", self.fov - 10, duration)
		elif event.is_action_pressed("mouse_wheel_down"):
			if self.fov+10 < 179:
				tween.tween_property(self, "fov", self.fov + 10, duration)


