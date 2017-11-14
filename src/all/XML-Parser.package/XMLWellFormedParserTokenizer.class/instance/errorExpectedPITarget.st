errors
errorExpectedPITarget
	self errorExpected:
		(state isXMLDeclarationState
			ifTrue: ['xml declaration name or processing instruction target']
			ifFalse: ['processing instruction target'])