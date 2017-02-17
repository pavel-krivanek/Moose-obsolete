inheritance
testInheritedClasses 
	 
	| p5 | 
	p5 := self packageP5FullReferee. 
	self 
		assert: 
			(p5 queryOutgoingInheritances opposites equalsTo: (Set with: self c12FullReferencerInSide))