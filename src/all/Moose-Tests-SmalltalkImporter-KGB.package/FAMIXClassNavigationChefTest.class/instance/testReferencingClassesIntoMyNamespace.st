allIncomingInvocations
testReferencingClassesIntoMyNamespace
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withinMyNamespace isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withinMyNamespace size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))