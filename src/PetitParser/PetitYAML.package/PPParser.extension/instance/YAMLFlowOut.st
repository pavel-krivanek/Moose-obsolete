*PetitYAML
YAMLFlowOut
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'flow-out'.

		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]