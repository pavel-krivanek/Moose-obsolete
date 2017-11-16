tests
testIncomingAssociationTypes
	self assert: var2 incomingAssociationTypes equals: {FAMIXAccess}.
	self
		assert: class1 incomingAssociationTypes asSet
		equals:
			{FAMIXInheritance.
			FAMIXReference.
			FAMIXTraitUsage} asSet.
	self assert: method1 incomingAssociationTypes equals: {FAMIXInvocation}