*PetitYAML
YAMLM
	^ self >=> [:context :cc |
		| retval |
		context YAMLN: (context YAMLM).

		retval := cc value.
	
		context YAMLRestoreN.
		retval.
	]