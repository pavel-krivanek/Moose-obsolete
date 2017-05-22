allIncomingInvocations
testReferencingClassesOutOfMyPackage
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyPackage size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyPackage size
		equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))