*PetitYAML
YAMLBlockKey
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		context YAMLContext: #'block-key'.

		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]