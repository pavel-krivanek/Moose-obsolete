staticDependencies
testStaticProviderClassesIntoMyNamespace 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations atTypeScope withinMyNamespace  
				equalsTo: (Set with: self c12FullReferencerInSide with: self c11FullRefereeOutSide))