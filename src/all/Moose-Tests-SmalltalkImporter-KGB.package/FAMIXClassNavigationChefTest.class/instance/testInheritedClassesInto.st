inheritance
testInheritedClassesInto 
	 
	| p6 | 
	p6 := self packageP6InteractedReferee. 
	self 
		assert: 
			((self c11FullRefereeOutSide queryOutgoingInheritances opposites withinPackage: p6) 
				equalsTo: (Set with: self c12FullReferencerInSide)). 
	self 
		assert: 
			((self c11FullRefereeOutSide 
				queryOutgoingInheritances opposites withinNamespace: self namespace2FullReferee) 
				equalsTo: (Set with: self c12FullReferencerInSide))