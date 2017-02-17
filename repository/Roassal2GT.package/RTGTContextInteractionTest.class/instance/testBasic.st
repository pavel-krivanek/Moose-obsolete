tests
testBasic

	| v int |
	v := RTView new.
	int := RTEmptyViewContextInteraction new.
	v @ int.
	self assert: (RTAbstractViewContext getContextFor: v) class equals: RTEmptyViewContext.