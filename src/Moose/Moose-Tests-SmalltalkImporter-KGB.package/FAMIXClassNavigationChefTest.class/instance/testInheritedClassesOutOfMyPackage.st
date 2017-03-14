inheritance
testInheritedClassesOutOfMyPackage 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryOutgoingInheritances opposites outOfMyPackage 
				equalsTo: (Set with: self c12FullReferencerInSide))