sureIncomingInvocations
testSureReferencingClasses
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType)
				equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FAMIXType) size
		equals: 4.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c12FullReferencerInSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c13FullRefereeInSideOutSide))