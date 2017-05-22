sureIncomingInvocations
testSureReferencingClasses
	self
		assert:
			((self namespace2FullReferee querySureIncomingInvocations
				atScope: FAMIXType)
				equalsTo:
					((Set
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c1FullReferencerOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c12FullReferencerInSide)
						union: (Set with: self c10FullReferencerInSide)))