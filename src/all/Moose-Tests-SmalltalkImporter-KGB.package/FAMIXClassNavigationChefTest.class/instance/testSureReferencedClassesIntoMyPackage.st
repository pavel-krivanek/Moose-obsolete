sureOutgoingInvocations
testSureReferencedClassesIntoMyPackage
	self
		assert: 1
		equals:
			(self c10FullReferencerInSide querySureOutgoingInvocations
				atScope: FAMIXType) withinMyPackage size.
	self
		assert:
			((self c10FullReferencerInSide querySureOutgoingInvocations
				atScope: FAMIXType) withinMyPackage
				equalsTo: (Set with: self c9FullRefereeInSide))