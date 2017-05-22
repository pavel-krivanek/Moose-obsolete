sureOutgoingInvocations
testSureReferencedClasses
	self
		assert:
			((self namespace1InteractedReferencerReferee
				querySureOutgoingInvocations atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c4FullRefereeInSide))