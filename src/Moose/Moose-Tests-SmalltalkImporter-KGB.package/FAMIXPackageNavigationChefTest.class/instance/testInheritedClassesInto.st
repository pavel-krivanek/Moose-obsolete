inheritance
testInheritedClassesInto 
	 
	| p5 p6 | 
	p5 := self packageP5FullReferee. 
	p6 := self packageP6InteractedReferee.  
	self 
		assert: 
			((p5 queryOutgoingInheritances opposites withinPackage: p6) 
				equalsTo: (Set with: self c12FullReferencerInSide))