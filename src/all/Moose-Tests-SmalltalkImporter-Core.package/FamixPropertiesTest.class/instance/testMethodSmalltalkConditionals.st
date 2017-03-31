testing
testMethodSmalltalkConditionals
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #numberOfConditionals) equals: 1.
	self assert: self lanInterfaceOriginateMethod numberOfConditionals equals: 1