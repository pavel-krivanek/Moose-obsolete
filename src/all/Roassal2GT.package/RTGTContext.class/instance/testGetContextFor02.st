tests
testGetContextFor02

	| context |
	context := prez getContextFor: view.

	self assert: (RTAbstractViewContext getContextFor: view) equals: context.
	
	RTEmptyViewContext setOnView: view.	
	self assert: (RTAbstractViewContext getContextFor: view) ~~ context.
	self assert: (RTAbstractViewContext getContextFor: view) class equals: RTEmptyViewContext.