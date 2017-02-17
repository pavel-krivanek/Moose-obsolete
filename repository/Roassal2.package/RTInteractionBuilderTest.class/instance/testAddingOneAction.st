tests
testAddingOneAction
	builder action: #inspect.
	self assert: builder numberOfInteractions equals: 1