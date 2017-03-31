inheritance
testInheritedByClasses 
	 
	self 
		assert: 
			(self namespace2FullReferee queryIncomingInheritances atTypeScope 
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide
						with: self c11FullRefereeOutSide)).
	self assert: 
			(self namespace2FullReferee queryIncomingInheritances opposites 
		equalsTo: (Set 
					with: self c11FullRefereeOutSide 
					with: self c3ReferencerInSideRefereeOutSide)).