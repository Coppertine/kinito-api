extends Object
class entry:
	var position : Vector2 = Vector2(0,0)
	var icon = load("res://!KinitoAPI/lense/Entrys.png")
	# Animation frame
	var icon_offset = 0
	var click_object = entry_click.new()
	func click():
		if click_object.email != null:
			# Note to self, this is most likely running from the 
			Tab.sendMail(click_object.email_index)

class entry_click:
	var email_index = null
	# text file contents, if file_copy_from is not "", this will not be used.
	var file_contents = ""
	# File name generated from said entry
	var file_name = ""
	## Direct location to copy a file from
	var file_copy_from = ""
	var sound = load("res://!KinitoAPI/lense/drop.wav")
