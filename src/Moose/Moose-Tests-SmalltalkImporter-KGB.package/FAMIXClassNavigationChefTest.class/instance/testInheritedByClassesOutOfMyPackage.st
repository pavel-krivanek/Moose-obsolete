inheritance
testInheritedByClassesOutOfMyPackage 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances opposites outOfMyPackage 
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))