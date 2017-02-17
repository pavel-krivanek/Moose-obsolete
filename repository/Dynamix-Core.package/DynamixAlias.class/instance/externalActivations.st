accessing-derived
externalActivations
	^ self activations reject: [ :each |
		each isSelfMessage ]