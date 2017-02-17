allOutgoingInvocations
testReferencedMethods
	| c11InstCreation1 c3m3 c5m1 |
	c11InstCreation1 := self getMethod: 'm2p5c11InstCreation1()' from: self c11FullRefereeOutSide.
	c3m3 := self getMethod: 'm1p2c3Mtd3()' from: self c3ReferencerInSideRefereeOutSide.
	c5m1 := self getMethod: 'm1p3c5Mtd1()' from: self c5ReferencerInSideRefereeInSide.
	self assert: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations opposites size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations opposites
				equalsTo:
					(Set new
						add: c11InstCreation1;
						add: c3m3;
						add: c5m1;
						yourself))