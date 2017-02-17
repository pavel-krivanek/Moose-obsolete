*PetitYAML
YAMLPlusM
	^ self >=> [:context :cc |
		| retval lastIndent |
		lastIndent := context YAMLN.
		context YAMLN: (lastIndent + context YAMLM).

		retval := cc value.
	
		context YAMLRestoreN.
		retval.
	]