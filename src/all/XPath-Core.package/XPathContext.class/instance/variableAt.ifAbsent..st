accessing
variableAt: aVariableName ifAbsent: aBlock
	^ self variables
		at: aVariableName
		ifAbsent: aBlock