errors
errorExpectedPITarget
	self errorExpected:
		(context isXMLDeclarationContext
			ifTrue: ['xml declaration name or processing instruction target']
			ifFalse: ['processing instruction target'])