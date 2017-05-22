allOutgoingInvocations
testAllOutgoingInvocationsWithoutSelfLoops
	self assert: 13 equals: self c1FullReferencerOutSide queryAllOutgoingInvocations size.
	self assert: ((self c1FullReferencerOutSide queryAllOutgoingInvocations atScope: FAMIXType) includes: self c1FullReferencerOutSide).
	self assert: 12 equals: self c1FullReferencerOutSide queryAllOutgoingInvocations withoutSelfLoops size.
	self deny: ((self c1FullReferencerOutSide queryAllOutgoingInvocations withoutSelfLoops atScope: FAMIXType) includes: self c1FullReferencerOutSide)