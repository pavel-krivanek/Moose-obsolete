allOutgoingInvocations
testAllOutgoingDependenciesWithoutSelfLoops
	self assert: 25 equals: self c1FullReferencerOutSide queryAllOutgoingAssociations size.
	self assert: ((self c1FullReferencerOutSide queryAllOutgoingAssociations atScope: FAMIXType) includes: self c1FullReferencerOutSide).
	self assert: 16 equals: self c1FullReferencerOutSide queryAllOutgoingAssociations withoutSelfLoops size.
	self deny: ((self c1FullReferencerOutSide queryAllOutgoingAssociations withoutSelfLoops atScope: FAMIXType) includes: self c1FullReferencerOutSide)