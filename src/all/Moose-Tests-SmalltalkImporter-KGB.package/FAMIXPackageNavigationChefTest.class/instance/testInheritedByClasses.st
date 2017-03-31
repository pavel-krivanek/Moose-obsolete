inheritance
testInheritedByClasses 
	 
	| p6 | 
	p6 := self packageP6InteractedReferee. 
	self 
		assert: 
			(p6 queryIncomingInheritances opposites equalsTo: (Set with: self c11FullRefereeOutSide))