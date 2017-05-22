allDependencies
testClientClassesInto
	self
		assert:
			(((self namespace2FullReferee queryAllIncomingAssociations
				atScope: FAMIXType)
				withinNamespace: self namespace3ReferencerReferee)
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))