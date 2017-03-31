accessing
variableAt: aVariableName
	^ self variables
		at: aVariableName
		ifAbsent: [nil]