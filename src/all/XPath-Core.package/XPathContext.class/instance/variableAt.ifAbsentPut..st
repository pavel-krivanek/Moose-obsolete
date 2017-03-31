accessing
variableAt: aVariableName ifAbsentPut: aBlock
	^ self variables
		at: aVariableName
		ifAbsentPut: aBlock