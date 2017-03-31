references
testTargetClassesInStaticReferencingClasses
 
	| p2 |
	p2 := self packageP2InteractedReferencerReferee. 

	self 
		assert: (p2 queryIncomingReferences targetClasses
		equalsTo: (Set
					with: self c2ReferencerOutSideRefereeInSide
					with: self c3ReferencerInSideRefereeOutSide
					with: self c4FullRefereeInSide )).
	self 
		assert: (p2 queryIncomingReferences withoutSelfLoops targetClasses
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide )).