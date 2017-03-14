tests
testAllOutgoingInvocations
	self
		assert: self model allInvocations size
		equals: (self model allMethods inject: 0 into: [ :sum :each | sum + each outgoingInvocations size ])