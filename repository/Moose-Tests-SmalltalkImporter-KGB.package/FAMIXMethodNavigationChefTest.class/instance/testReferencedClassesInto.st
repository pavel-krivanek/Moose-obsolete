allOutgoingInvocations
testReferencedClassesInto
	| c1Mtd4 p6 |
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	p6 := self packageP6InteractedReferee.
	self assert: (c1Mtd4 queryAllOutgoingInvocations atTypeScope withinPackage: p6) size equals: 1.
	self
		assert:
			((c1Mtd4 queryAllOutgoingInvocations atTypeScope withinPackage: p6)
				equalsTo: (Set with: self c13FullRefereeInSideOutSide)).
	self
		assert: 1
		equals: (c1Mtd4 queryAllOutgoingInvocations atTypeScope withinNamespace: self namespace2FullReferee) size.
	self
		assert:
			((c1Mtd4 queryAllOutgoingInvocations atTypeScope withinNamespace: self namespace2FullReferee)
				equalsTo: (Set with: self c13FullRefereeInSideOutSide))