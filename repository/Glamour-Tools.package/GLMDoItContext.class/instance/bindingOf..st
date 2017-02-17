bindings
bindingOf: aKey
	^ self variableBindings at: #aKey ifAbsent: [nil]