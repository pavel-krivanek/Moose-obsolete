initialization
askForPattern
	^ TRPlatform current
		dialogRequest:
			'Enter a regular expression (leave empty to remove all previous selection)'
		initialAnswer: '*aPattern*'