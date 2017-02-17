allIncomingInvocations
testReferencingClasses
	self assert: (self namespace2FullReferee queryAllIncomingInvocations atTypeScope equalsTo: ((Set 
				with: self c14ReferencerOutSideRefereeOutSide
				with: self c1FullReferencerOutSide
				with: self c6FullReferencerInSideOutSide) union:
				(Set 
					with: self c12FullReferencerInSide
					with: self c13FullRefereeInSideOutSide
					with: self c10FullReferencerInSide
					with: self c11FullRefereeOutSide)))
				