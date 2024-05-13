extends Node
export  var current = 0
var pos = Vector2()
var mousePos = Vector2()
var selected = false
func _process(delta):
#	if (get_viewport().get_mouse_position().x < Vars.get("ScreenSize").x):
#		mousePos.x = get_viewport().get_mouse_position().x
#	if (get_viewport().get_mouse_position().y < Vars.get("ScreenSize").y - 80):
#		mousePos.y = get_viewport().get_mouse_position().y
	if (get_viewport().get_mouse_position().y < 40):
		mousePos.y = 40
	if (get_viewport().get_mouse_position().x < 40):
		mousePos.x = 40
		
#	if (selected == true):Tab.set_window_position(current, mousePos - pos)

func button_down():
#	Tab.focus(current)
	selected = true
#	pos = get_viewport().get_mouse_position() - Tab.window_position(current)

func button_up():
	selected = false
