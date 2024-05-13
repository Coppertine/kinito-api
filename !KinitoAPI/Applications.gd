class Applications:
	enum {
		PC, # Includes Button, Boot, Memories, Sam Hang
		KINITOPET,
		JADE_HAND, # Possibly unused, replaced with an image animation
		INTRO_WINDOWS, # Disclaimer and How To
		EMAIL,
		INTERNET, # Includes webworld
		KINITO_INVADE, # The intro "invasion" / blue-screen
		SETTINGS,
		KINITO_STORY,
		STORY_QUESTION_BOX, # Kinito asks if you want to read his story
		PAUSE_MENU,
		MSG_BOX, # the customisable kind, please use Tab.msgbox instead
		QUESTION_TEXT_INPUT, # only used for name, because it's "hardcoded"
		TERMINAL, # Used for the "Hatch Kinito" scene as well as the additional terminals for the "kinito invade" section
		LOST_WORLD,
		MOD_LOADER, # Incomplete, DO NOT USE THIS. It likes to load only 1 mod at a time
		FLAT_DOOR, # Used for the door showing up after the MS Paint scare
		SAM_SCARE, # This is shown after you drag the body
		SAM_HANG,
		ANALYSIS_HUB, # includes the evil questions
		FRIENDSHIP_FORM, # includes installation screen
		MINESWEEPER,
		PINBALL,
		PAINT,
		JADE_SCARE, # Secondary monitor effect is somewhere else..
		FRIEND_KILL, # Who would you rather kill
		CHAPER_SELECT,
		DOOR,
		LIGHTBULB_OFF, # before dark scene
		BLISS, # Ending 3D scene and video.
		CREDITS, # Normal ending 3D scene (A World Built for You)
		HIDE_AND_SEEK_HOUSE, # Unused, seen in trailer.  
	}
