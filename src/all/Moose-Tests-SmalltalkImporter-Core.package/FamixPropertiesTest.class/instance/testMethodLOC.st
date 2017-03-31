testing
testMethodLOC
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #numberOfLinesOfCode) equals: 22.
	self assert: self lanInterfaceOriginateMethod numberOfLinesOfCode equals: 22