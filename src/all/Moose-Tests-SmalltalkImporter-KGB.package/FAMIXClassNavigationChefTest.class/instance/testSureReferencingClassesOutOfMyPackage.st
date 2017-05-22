sureIncomingInvocations
testSureReferencingClassesOutOfMyPackage
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyPackage size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyPackage size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))