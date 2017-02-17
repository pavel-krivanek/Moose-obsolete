testing
testMethodSmalltalkStatements
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #numberOfStatements) equals: 15.
	self assert: self lanInterfaceOriginateMethod numberOfStatements equals: 15