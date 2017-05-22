sureOutgoingInvocations
testSureReferencedPackages
	self
		assert: 2
		equals:
			(self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FAMIXPackage) size.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FAMIXPackage)
				equalsTo:
					(Set
						with: self packageP6InteractedReferee
						with: self packageP5FullReferee))