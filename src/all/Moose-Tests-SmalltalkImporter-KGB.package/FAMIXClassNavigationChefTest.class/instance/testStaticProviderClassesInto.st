staticDependencies
testStaticProviderClassesInto 
	 
	| p6 | 
	p6 := self packageP6InteractedReferee. 
	self 
		assert: 
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations atTypeScope withinPackage: p6) 
				equalsTo: (Set with: self c12FullReferencerInSide)). 
	self 
		assert: 
			((self c11FullRefereeOutSide 
				queryStaticOutgoingAssociations atTypeScope withinNamespace: self namespace2FullReferee) 
				equalsTo: (Set with: self c12FullReferencerInSide with: self c11FullRefereeOutSide))