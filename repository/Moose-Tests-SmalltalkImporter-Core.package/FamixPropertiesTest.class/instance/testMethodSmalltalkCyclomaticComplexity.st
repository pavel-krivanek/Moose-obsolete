testing
testMethodSmalltalkCyclomaticComplexity
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #cyclomaticComplexity) equals: 2.
	self assert: self lanInterfaceOriginateMethod cyclomaticComplexity equals: 2