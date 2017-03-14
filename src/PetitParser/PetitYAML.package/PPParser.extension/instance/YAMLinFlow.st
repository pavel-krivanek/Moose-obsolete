*PetitYAML
YAMLinFlow
	^ self >=> [:context :cc |
		| retval aYAMLContext |
		aYAMLContext := context YAMLContext.
		(context YAMLContext = #'flow-out')	ifTrue: [ context YAMLContext: #'flow-in' ].
		(context YAMLContext = #'flow-in') 	ifTrue: [ context YAMLContext: #'flow-in' ].
		(context YAMLContext = #'block-key') ifTrue: [ context YAMLContext: #'flow-key' ].
		(context YAMLContext = #'flow-key') 	ifTrue: [ context YAMLContext: #'flow-key' ].
		
		retval := cc value.

		context YAMLContext: aYAMLContext.
		retval.
	]