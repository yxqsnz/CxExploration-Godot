extends StaticBody

var t =  0
var x =  0
var x2 = 0
var z =  0
var z2 = 2
var a2 = 0
var b =  0
export var force = 2
export var area = 3
export var usePhysics = true
export var planetInfo = ""

# Physic stuff	
func orbit(a):
	a2 = a - b
	x2 = area * sin(a2)
	z2 = force * cos(a2)
	self.translate(Vector3(-x, 0, -z))
	
	x = area * sin(a)
	z = force * cos(a)
	
	self.translate(Vector3(x, 0, z))
	
func _physics_process(delta):
	if usePhysics and not Global.noPhysics:
		b = 0.5 * PI * delta
		t += b
		orbit(t)

		
func _on_mouse_enter():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	
	if not Global.shown_help:
		$Props.text = planetInfo
		Global.shown_help = true
	else:
		$Props.set('text', '')
		Global.shown_help = false
	


func _on_mouse_leave():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	$Props.set('text', '')
	Global.shown_help = false
