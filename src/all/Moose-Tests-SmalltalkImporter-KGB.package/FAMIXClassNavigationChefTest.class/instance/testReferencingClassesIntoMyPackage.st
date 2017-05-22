allIncomingInvocations
testReferencingClassesIntoMyPackage
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withinMyPackage isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withinMyPackage size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))