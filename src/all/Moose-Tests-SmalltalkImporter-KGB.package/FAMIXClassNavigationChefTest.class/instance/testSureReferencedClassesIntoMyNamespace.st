sureOutgoingInvocations
testSureReferencedClassesIntoMyNamespace
	self
		assert: 1
		equals:
			(self c16FullReferencerOutSideInSide querySureOutgoingInvocations
				atScope: FAMIXType) withinMyNamespace size.
	self
		assert:
			((self c16FullReferencerOutSideInSide querySureOutgoingInvocations
				atScope: FAMIXType) withinMyNamespace
				equalsTo:
					(Set
						with: self c18FullRefereeInSideOutSide
						with: self c18FullRefereeInSideOutSide))