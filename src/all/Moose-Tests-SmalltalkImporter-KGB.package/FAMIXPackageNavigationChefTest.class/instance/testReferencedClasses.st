allOutgoingInvocations
testReferencedClasses
	self
		assert:
			((self packageP8FullReferencer queryAllOutgoingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c18FullRefereeInSideOutSide
						with: self c19FullRefereeOutSide))