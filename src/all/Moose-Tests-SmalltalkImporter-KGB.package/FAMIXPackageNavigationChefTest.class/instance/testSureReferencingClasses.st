sureIncomingInvocations
testSureReferencingClasses
	self
		assert:
			((self packageP5FullReferee querySureIncomingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide))