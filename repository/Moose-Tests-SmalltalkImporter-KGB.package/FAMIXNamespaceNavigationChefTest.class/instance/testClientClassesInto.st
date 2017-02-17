allDependencies
testClientClassesInto 
	 
	self 
		assert: 
			((self namespace2FullReferee 
				queryAllIncomingAssociations atTypeScope withinNamespace: self namespace3ReferencerReferee) 
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))