allOutgoingInvocations
testSourceClassesInReferencedClasses
	
	self assert: (self packageP3InteractedReferencer queryAllOutgoingInvocations sourceClasses
		equalsTo: (Set
					with: self c5ReferencerInSideRefereeInSide 
					with: self c6FullReferencerInSideOutSide )).
