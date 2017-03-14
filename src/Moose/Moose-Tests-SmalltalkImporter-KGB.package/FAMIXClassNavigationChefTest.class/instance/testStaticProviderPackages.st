staticDependencies
testStaticProviderPackages 
	 
	| p6 | 
	p6 := self packageP6InteractedReferee. 
	self 
		assert: 
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations atPackageScope equalsTo: (Set with: p6 with: self packageP5FullReferee))