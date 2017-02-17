allIncomingInvocations
testAllIncomingInvocationsOutOfMyPackage
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage size equals: 3.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage atTypeScope
				equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage size equals: 4.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage atTypeScope
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide))