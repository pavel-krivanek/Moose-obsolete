MooseKGB-TestFamix3-allDependencies
testProviderClasses 
	 
	| p8 | 
	p8 := self packageP8FullReferencer. 
	self 
		assert: 
			(p8 providerTypes 
				equalsTo: 
					(Set 
						with: self c18FullRefereeInSideOutSide 
						with: self c19FullRefereeOutSide 
						with: self c14ReferencerOutSideRefereeOutSide))