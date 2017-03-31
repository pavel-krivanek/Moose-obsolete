tests
testOutgoingAssociationTypes
	self assert: class1 outgoingAssociationTypes asSet equals: {FAMIXInheritance} asSet.
	self
		assert: method1 outgoingAssociationTypes asSet
		equals:
			{FAMIXInvocation.
			FAMIXReference.
			FAMIXAccess} asSet