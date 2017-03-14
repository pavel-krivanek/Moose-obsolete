MooseKGB-TestFamix3-allDependencies
testProviderClasses 
	 
	self 
		assert: 
			(self namespace1InteractedReferencerReferee providerTypes 
				equalsTo: 
					(Set 
						with: self c11FullRefereeOutSide 
						with: self c13FullRefereeInSideOutSide 
						with: self c14ReferencerOutSideRefereeOutSide 
						with: self cObject))