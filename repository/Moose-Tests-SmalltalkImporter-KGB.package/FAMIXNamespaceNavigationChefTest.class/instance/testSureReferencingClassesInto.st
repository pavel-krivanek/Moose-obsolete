sureIncomingInvocations
testSureReferencingClassesInto 
	 
	self 
		assert: 
			((self namespace2FullReferee 
				querySureIncomingInvocations atTypeScope withinNamespace: self namespace3ReferencerReferee) 
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))