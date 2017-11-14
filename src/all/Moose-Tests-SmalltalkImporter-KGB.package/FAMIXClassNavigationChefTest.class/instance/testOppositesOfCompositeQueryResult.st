allOutgoingInvocations
testOppositesOfCompositeQueryResult
	self assert: self c6FullReferencerInSideOutSide queryAllOutgoing opposites size equals: 7.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoing opposites
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						add: (self getMethod: 'm2p5c11InstCreation1()' from: self c11FullRefereeOutSide);
						add: (self getMethod: 'm1p3c5Mtd1()' from: self c5ReferencerInSideRefereeInSide);
						add: (self getMethod: 'm1p2c3Mtd3()' from: self c3ReferencerInSideRefereeOutSide);
						add: self cObject;
						yourself))