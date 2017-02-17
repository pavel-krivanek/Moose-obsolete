testing
testMethodSmalltalkParameters
	self assert: self lanInterfaceOriginateMethod numberOfParameters equals: 0.
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #numberOfParameters) equals: 0