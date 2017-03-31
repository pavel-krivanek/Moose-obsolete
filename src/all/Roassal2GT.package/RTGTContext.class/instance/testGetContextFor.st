tests
testGetContextFor

	| context |
	self deny: view hasAttributes.
	context := prez getContextFor: view.
	self assert: context notNil.
	self assert: context class equals: RTAbstractViewContext defaultContextClass.
	self assert: (context class inheritsFrom: RTAbstractViewContext).
	self assert: view hasAttributes.