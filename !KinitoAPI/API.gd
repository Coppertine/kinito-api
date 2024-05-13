extends Node

func _ready():
	print("[api] API registered into App")
	pass

func _create_application(app_id):
	_print("Creating application")
	if typeof(app_id) != TYPE_INT:
		_print("ERROR: Application " + str(app_id) + "is not an integer value.")
		return
	if get_tree().get_current_scene().get_node("Main").has_node(str(app_id)):
		_print("ERROR: Application conflict found with: " + str(app_id))
		_print("ERROR: Please change your application id, you can use an additional unique prefix in front of your application id.")
		return
	
	var node = Node2D.new()
	node.name = str(app_id)
	App.setNodeScale()
	node.scale = Vars.get("nodeScale")
	get_tree().get_current_scene().get_node("Main").add_child(node)
	if Tab.data["open"].size() <= app_id:
		Tab.data["open"].resize(app_id + 1)
	if Tab.data["data"].size() <= app_id:
		Tab.data["data"].resize(app_id + 1)
	if Tab.data["pos"].size() <= app_id:
		Tab.data["pos"].resize(app_id + 1)
	Tab.data["open"][app_id] = false
	Tab.data["data"][app_id] = 0
	Tab.data["pos"][app_id] = Vector2(0,0)
	_print("Created application: " + str(app_id))
	pass
	
func _print(line):
	print("[api] " + line)
