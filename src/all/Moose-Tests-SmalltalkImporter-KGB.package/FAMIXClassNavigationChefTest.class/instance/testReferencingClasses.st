allIncomingInvocations
testReferencingClasses
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) size
		equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))