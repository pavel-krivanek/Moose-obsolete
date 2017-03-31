inheritance
testInheritedByClassesInto 

	self assert: ((self c11FullRefereeOutSide queryIncomingInheritances opposites
						withinNamespace: self namespace1InteractedReferencerReferee) 
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide)). 
	self assert: ((self c11FullRefereeOutSide queryIncomingInheritances opposites
						withinPackage: self packageP2InteractedReferencerReferee) 
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))