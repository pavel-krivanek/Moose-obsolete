*PetitYAML
YAMLFlowIn
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'flow-in'.

		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]