*PetitYAML
YAMLBlockIn
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'block-in'.

		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]