handling - dtd
handleParameterEntityReference: aName
	self haveParameterEntityReferences.
	^ self doctypeDefinition
		parameterEntityAt: aName
		ifAbsent: [
			self isValidating
				ifTrue: [self errorInvalidUndeclaredParameterEntityReference: aName].
			self haveSkippedParameterEntityReferences.
			nil]