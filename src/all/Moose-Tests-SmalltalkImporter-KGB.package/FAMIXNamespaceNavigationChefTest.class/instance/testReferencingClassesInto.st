allIncomingInvocations
testReferencingClassesInto
	self assert: ((self namespace2FullReferee queryAllIncomingInvocations atTypeScope withinNamespace: self namespace3ReferencerReferee)
		equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))