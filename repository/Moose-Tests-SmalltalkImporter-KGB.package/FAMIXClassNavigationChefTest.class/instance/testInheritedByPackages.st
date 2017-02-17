inheritance
testInheritedByPackages 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances atPackageScope
		equalsTo: (Set with: self packageP2InteractedReferencerReferee))