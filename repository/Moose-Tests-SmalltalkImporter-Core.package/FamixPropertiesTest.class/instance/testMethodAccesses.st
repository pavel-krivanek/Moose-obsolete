testing
testMethodAccesses
	self assert: self lanInterfaceOriginateMethod numberOfAccesses equals: 22.
	self
		assert: self lanInterfaceOriginateMethod numberOfAccesses
		equals: (self lanInterfaceOriginateMethod propertyNamed: #numberOfAccesses).
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.originator()') numberOfAccesses equals: 3