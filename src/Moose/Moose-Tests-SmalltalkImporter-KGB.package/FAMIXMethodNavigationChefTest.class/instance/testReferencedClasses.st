allOutgoingInvocations
testReferencedClasses
	| c1Mtd4 |
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	self assert: c1Mtd4 queryAllOutgoingInvocations atTypeScope size equals: 2.
	self
		assert:
			(c1Mtd4 queryAllOutgoingInvocations atTypeScope
				equalsTo: (Set with: self c13FullRefereeInSideOutSide with: self c1FullReferencerOutSide))