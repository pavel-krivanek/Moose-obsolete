allIncomingInvocations
testReferencingClassesInto
	self
		assert:
			(((self namespace2FullReferee queryAllIncomingInvocations
				atScope: FAMIXType)
				withinNamespace: self namespace3ReferencerReferee)
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))