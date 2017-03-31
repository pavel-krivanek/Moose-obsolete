private
resolveVariableReference: aVariableName
	^ self
		variableAt: aVariableName
		ifAbsent: [self errorUndeclaredVariable: aVariableName]