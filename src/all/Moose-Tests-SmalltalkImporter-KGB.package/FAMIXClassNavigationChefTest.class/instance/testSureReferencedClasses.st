sureOutgoingInvocations
testSureReferencedClasses
	self
		assert: 2
		equals:
			(self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FAMIXType) size.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c13FullRefereeInSideOutSide
						with: self c11FullRefereeOutSide))