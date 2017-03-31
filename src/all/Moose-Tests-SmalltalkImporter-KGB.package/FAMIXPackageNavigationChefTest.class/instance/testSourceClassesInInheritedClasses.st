inheritance
testSourceClassesInInheritedClasses 
	| p3 | 
	p3 := self packageP3InteractedReferencer. 

	self assert: (p3 queryOutgoingInheritances sourceClasses
		equalsTo: (Set
					with: self c5ReferencerInSideRefereeInSide
					with: self c6FullReferencerInSideOutSide 
					with: self c7FullRefereeInSide 
					with: self c8FullReferencerInSide )).

	self assert: (p3 queryOutgoingInheritances withoutSelfLoops sourceClasses
		equalsTo: (Set
					with: self c5ReferencerInSideRefereeInSide
					with: self c6FullReferencerInSideOutSide 
					with: self c7FullRefereeInSide ))