*PetitYAML
YAMLSeqSpaces
	^ self >=> [:context :cc |
		| retval lastIndent |
		lastIndent := context YAMLN.
		(context YAMLContext = #'block-out') ifTrue: [ 
			context YAMLN: (lastIndent - 1).
		] ifFalse: [ 
			(context YAMLContext = #'block-in') ifFalse: [ self error: 'OOUPSLA' ].
			context YAMLN: lastIndent.
		].

		retval := cc value.
		
		context YAMLRestoreN.
		retval.
	]