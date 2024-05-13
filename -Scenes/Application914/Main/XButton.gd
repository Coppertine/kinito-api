extends Node2D

func _ready():
	pass


func _on_XButton_mouse_entered():
	$Background.color = Color(1, 0, 0, 1)
	pass # Replace with function body.


func _on_XButton_mouse_exited():
	$Background.color = Color(1, 1, 1, 1)
	pass # Replace with function body.


func button_down():
	pass # Replace with function body.


func _on_XButton_gui_input(event):
	print("Pressed X Button")
	Tab.close(914)
	pass # Replace with function body.
