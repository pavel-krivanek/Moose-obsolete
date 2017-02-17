*PetitYAML
YAMLNPlus
	^ self >=> [:context :cc |
		| retval lastIndent |
		lastIndent := context YAMLN.
		context YAMLN: (lastIndent + 1).

		retval := cc value.
	
		context YAMLRestoreN.
		retval.
	]