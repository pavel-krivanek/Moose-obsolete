inheritance
testInheritedByNamespaces 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances atNamespaceScope 
				equalsTo: (Set with: self namespace1InteractedReferencerReferee))