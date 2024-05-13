extends Node


func _ready():
	var api_node = Node2D.new()
	var applications_node = Node2D.new()
	applications_node.name = "APPLICATIONS"
	var applications = load("res://!KinitoAPI/Applications.gd")
	applications_node.set_script(applications)
	
	api_node.name = "API"
	var API = load("res://!KinitoAPI/API.gd")
	api_node.set_script(API)
	App.add_child(api_node)
	App.add_child(applications_node)
#	if steam_username == "TENOKE": # known scene cracker
#		print("[api] ======================")
#		print("[api] arrh, me-matey, travellin' the seven seas? don't forget to give back to the community (and possibly troy too if you can)")
#		print("[api] troy's patreon: https://www.patreon.com/troy_en")
#		print("[api] ======")
#		print("[api] Also, don't forget to run an anti-virus to double check if someone hacked your computer..")
#		print("[api] ======================")
	pass

var patched_lense = false
var pc_name = ""
func _process(delta):
	
	if Tab.data["open"][0] and !patched_lense:
		if "PC" in get_parent().get_parent().get_node("0").get_child(0).name and get_parent().get_parent().get_node("0").get_child(0).has_node("Aspect"):
			print("[api] checking desktop") 
			# Redirecting lense to a seperate thing overall.
			# Because lense.exe isn't called "lense.exe" as a node.. we can instead go through each child.. yay..
			var desktop_nodes = get_parent().get_parent().get_node("0").get_child(0).get_node("Aspect")
			for desktop_child in desktop_nodes.get_children():
				if desktop_child.Name == "lense.exe":
					desktop_child.ButtonNumber = 9914
					pc_name = get_parent().get_parent().get_node("0").get_child(0).name
					print("[api] changed lense number")
					patched_lense = true
	if patched_lense and Tab.data["open"][0] and get_parent().get_parent().get_node("0").get_child(0).name != pc_name and "PC" in get_parent().get_parent().get_node("0").get_child(0).name:
		patched_lense = false
	
func _input(event):
	if event is InputEventMouseButton:
		if event.doubleclick and event.button_index == BUTTON_LEFT:
			if(Tab.buttonValue == 9914): ## Lense shortcut.
				Tab.msgBox("Lense override","Attempting lense override",0,"Ok","Cancel",0)
				App.get_node("API")._create_application(914)
				print(Tab.data["open"][914])


#func _add_kinito_eyepatch():
#	var kinito_props_pth = "1/MAIN_KINITO/Main/Pet/Pet/3D/Viewport/6-a/Viewport/3D/PET/HeadLook/HeadMaster/Props"
#	var default_prop_count = 3 # Glasses, Hero's Mask and Top hat.
#	var eyepatch_prop_name = "Eyepatch"
#	if Tab.data["open"][1] == true and !get_parent().get_parent().has_node(kinito_props_pth):
#		# let's add in the patch
#		pass
#	pass
