inheritance
testInheritedByClassesOutOfMyNamespace 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances opposites outOfMyNamespace 
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))