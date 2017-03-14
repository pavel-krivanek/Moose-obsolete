inheritance
testInheritedByClassesInto 
	 
	| p5 p6 | 
	p5 := self packageP5FullReferee. 
	p6 := self packageP6InteractedReferee. 
	self 
		assert: 
			((p6 queryIncomingInheritances opposites withinPackage: p5) 
				equalsTo: (Set with: self c11FullRefereeOutSide))