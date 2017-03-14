allDependencies
testProviderClasses 
	 
	self 
		assert: 
			(self namespace1InteractedReferencerReferee queryAllOutgoingAssociations atTypeScope 
				equalsTo: 
					((Set 
						with: self c11FullRefereeOutSide 
						with: self c13FullRefereeInSideOutSide 
						with: self c14ReferencerOutSideRefereeOutSide 
						with: self cObject
						with: self c7FullRefereeInSide) union:
						(Set 
						with: self c6FullReferencerInSideOutSide
						with: self c2ReferencerOutSideRefereeInSide
						with: self c4FullRefereeInSide
						with: self c3ReferencerInSideRefereeOutSide
						with: self c1FullReferencerOutSide
						with: self c5ReferencerInSideRefereeInSide)))