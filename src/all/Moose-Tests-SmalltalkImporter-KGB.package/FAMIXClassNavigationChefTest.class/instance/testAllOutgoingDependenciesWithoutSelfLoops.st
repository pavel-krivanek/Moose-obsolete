allOutgoingInvocations
testAllOutgoingDependenciesWithoutSelfLoops
	self assert: 25 equals: self c1FullReferencerOutSide queryAllOutgoing size.
	self assert: ((self c1FullReferencerOutSide queryAllOutgoing atScope: FAMIXType) includes: self c1FullReferencerOutSide).
	self assert: 16 equals: self c1FullReferencerOutSide queryAllOutgoing withoutSelfLoops size.
	self deny: ((self c1FullReferencerOutSide queryAllOutgoing withoutSelfLoops atScope: FAMIXType) includes: self c1FullReferencerOutSide)