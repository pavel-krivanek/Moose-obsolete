allOutgoingInvocations
testReferencedClassesInto
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryAllOutgoingInvocations atScope: FAMIXType)
				withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide))