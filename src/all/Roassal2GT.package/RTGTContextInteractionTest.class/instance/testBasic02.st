tests
testBasic02

	| v int |
	v := RTView new.
	int := RTResizeableViewContextInteraction new.
	v @ int.
	self assert: (RTAbstractViewContext getContextFor: v) class equals: RTInteractiveViewContext.