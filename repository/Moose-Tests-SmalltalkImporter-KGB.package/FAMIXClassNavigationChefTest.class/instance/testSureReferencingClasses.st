sureIncomingInvocations
testSureReferencingClasses
	self assert: self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope size equals: 1.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope
				equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: self c13FullRefereeInSideOutSide querySureIncomingInvocations atTypeScope size equals: 4.
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations atTypeScope
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c12FullReferencerInSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c13FullRefereeInSideOutSide))