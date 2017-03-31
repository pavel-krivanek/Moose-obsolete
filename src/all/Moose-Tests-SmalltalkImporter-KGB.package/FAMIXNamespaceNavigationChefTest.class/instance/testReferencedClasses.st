allOutgoingInvocations
testReferencedClasses
	self assert: (self namespace1InteractedReferencerReferee queryAllOutgoingInvocations atTypeScope equalsTo:  ((Set 
					with: self c11FullRefereeOutSide 
					with: self c14ReferencerOutSideRefereeOutSide 
					with: self c13FullRefereeInSideOutSide
					with: self c5ReferencerInSideRefereeInSide
					with: self c7FullRefereeInSide) union:
					(Set 
						with: self c2ReferencerOutSideRefereeInSide
						with: self c3ReferencerInSideRefereeOutSide
						with: self c4FullRefereeInSide
						with: self c1FullReferencerOutSide)))