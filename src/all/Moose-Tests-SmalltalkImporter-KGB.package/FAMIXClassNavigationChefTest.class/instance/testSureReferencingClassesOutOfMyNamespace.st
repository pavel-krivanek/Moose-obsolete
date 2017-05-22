sureIncomingInvocations
testSureReferencingClassesOutOfMyNamespace
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace size
		equals: 2.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set
						with: self c15FullReferencerOutSide
						with: self c16FullReferencerOutSideInSide))