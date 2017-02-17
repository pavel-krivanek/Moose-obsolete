MooseKGB-TestFamix3-allDependencies
testClientClasses 
	 
	self 
		assert: 
			(self namespace2FullReferee clientTypes 
				equalsTo: 
					(Set 
						with: self c14ReferencerOutSideRefereeOutSide 
						with: self c1FullReferencerOutSide 
						with: self c6FullReferencerInSideOutSide 
						with: self c3ReferencerInSideRefereeOutSide))