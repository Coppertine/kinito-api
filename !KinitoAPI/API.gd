extends Node

func _ready():
	print("[api] API registered into App")
	pass

func register_mod(mod_info):
	_print("Registering new mod into api...")
	if _setup_mod_check(mod_info):
		_print("-------------------------------")
		_print("ERROR: Mod will not be installed as there are errors found when registering to the API.")
		return 1
	
	# Compatability checks, need to add them into the mod_node
	pass
	
func _setup_mod_check(mod_info):
	var mod_error = false
	if mod_info.mod_name == null or mod_info.mod_name == "":
		_print("ERROR: mod_name is not defined. Please define a name for your mod to register with the API.")
		mod_error = true
	if mod_info.mod_author == null or mod_info.mod_author == "":
		_print("ERROR: mod_author is not defined. Please define the author for your mod to register with the API.")		
		mod_error = true
	if mod_info.incompatable_mods != null:
		var dir = Directory.new()
		for incompatable_mod in mod_info.incompatable_mods:
			if dir.file_exists("user://Mods/%s.zip" % incompatable_mod):
				mod_error = true
				OS.alert("Incompatable Mod:\nA mod found ('%s')" % incompatable_mod, mod_info.mod_name)
				_print("ERROR: Incompatable mod found, '%s'. Please remove the mod to be able to run this mod with the API.")
	return mod_error
func _print(line):
	print("[api] " + line)
