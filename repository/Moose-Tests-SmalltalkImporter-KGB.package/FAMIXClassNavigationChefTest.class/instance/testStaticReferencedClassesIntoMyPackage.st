references
testStaticReferencedClassesIntoMyPackage 
	 
	self 
		assert: 1
		equals: 	self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyPackage size. 
	self 
		assert: 
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyPackage 
				equalsTo: 
					((Set new) 
						add: self c5ReferencerInSideRefereeInSide; 
						yourself)).
						
	self 
		assert: 1
		equals: 	self c6FullReferencerInSideOutSide queryOutgoingReferences withinMyPackage size. 
	self assert: (self c6FullReferencerInSideOutSide queryOutgoingReferences withinMyPackage atTypeScope
		equalsTo: (self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyPackage))