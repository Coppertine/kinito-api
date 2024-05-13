extends Control
export var tab = 0
export var multi = 1.5
export var focusable = true
export var enabled = true
var hovering = false
func _ready():
	if enabled:
		if (focusable == true):
			self.connect("mouse_entered", self, "_entered")
			self.connect("mouse_exited", self, "_exited")
			self.mouse_filter = 0
		else :
			self.mouse_filter = 2
		var TabAspect = self.rect_size
#		Tab.set_window_position(tab, Vector2(int(Vars.get("ScreenSize").x / 2 - (TabAspect.x / 2) * Vars.get("nodeScale").x * multi), int(Vars.get("ScreenSize").y / 2 - (TabAspect.y / 2) * Vars.get("nodeScale").x * multi)))

func _entered():
	hovering = true
func _exited():
	hovering = false

#func _process(delta):
#	if enabled:
#		if (focusable == true):
#			if (Tab.isfocus() == tab):
#				hovering = false
#				self.mouse_filter = 2
#			else :
#				self.mouse_filter = 0
#
#		if (hovering == true and focusable == true):
#			if Input.is_action_pressed("click"):
#				Tab.buttonValue = 0
#				Tab.focus(tab)
