staticDependencies
testStaticProviderClassesOutOfMyPackage 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations atTypeScope outOfMyPackage  
				equalsTo: (Set with: self c12FullReferencerInSide))