*PetitYAML
YAMLBlockOut
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'block-out'.

		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]