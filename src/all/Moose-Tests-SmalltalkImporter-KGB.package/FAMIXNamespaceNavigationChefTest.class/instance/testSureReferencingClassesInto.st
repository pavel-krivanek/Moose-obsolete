sureIncomingInvocations
testSureReferencingClassesInto
	self
		assert:
			(((self namespace2FullReferee querySureIncomingInvocations
				atScope: FAMIXType)
				withinNamespace: self namespace3ReferencerReferee)
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))