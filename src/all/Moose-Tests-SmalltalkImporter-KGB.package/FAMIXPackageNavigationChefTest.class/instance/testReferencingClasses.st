allIncomingInvocations
testReferencingClasses
	self
		assert:
			((self packageP5FullReferee queryAllIncomingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide))