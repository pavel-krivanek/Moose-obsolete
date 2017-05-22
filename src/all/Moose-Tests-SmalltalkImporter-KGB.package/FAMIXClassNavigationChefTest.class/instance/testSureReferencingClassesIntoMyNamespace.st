sureIncomingInvocations
testSureReferencingClassesIntoMyNamespace
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) withinMyNamespace isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FAMIXType) withinMyNamespace size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FAMIXType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))