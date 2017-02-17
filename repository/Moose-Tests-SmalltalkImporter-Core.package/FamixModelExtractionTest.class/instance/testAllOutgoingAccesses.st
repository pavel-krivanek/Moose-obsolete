tests
testAllOutgoingAccesses
	self
		assert: self model allAccesses size
		equals: (self model allMethods inject: 0 into: [ :sum :each | sum + each accesses size ])