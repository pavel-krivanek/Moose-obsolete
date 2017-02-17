tests
testFlatCollect
	self assert: self model allMethods size equals: (self model allClasses flatCollect: [ :each | each methods ]) size.
	self
		assert: self model allInvocations size
		equals: (self model allMethods flatCollect: [ :each | each outgoingInvocations ]) size.
	self assert: self model allAccesses size equals: (self model allMethods flatCollect: [ :each | each accesses ]) size