sureOutgoingInvocations
testSureReferencedClassesOutOfMyNamespace
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FAMIXType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))