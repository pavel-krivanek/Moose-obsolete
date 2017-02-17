*PetitYAML
YAMLFlowKey
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'flow-key'.

		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]