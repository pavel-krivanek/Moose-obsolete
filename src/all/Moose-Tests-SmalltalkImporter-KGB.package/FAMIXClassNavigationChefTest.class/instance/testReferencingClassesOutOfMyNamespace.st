allIncomingInvocations
testReferencingClassesOutOfMyNamespace
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))