tests
testOperation
	(operation := OPUMLOperation new) name: 'op'.
	self assert: operation notationString equals: 'op()'