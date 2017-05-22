sureOutgoingInvocations
testSureReferencedClassesInto
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				querySureOutgoingInvocations atScope: FAMIXType)
				withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide))