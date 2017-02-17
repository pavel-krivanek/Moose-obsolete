allOutgoingInvocations
testReferencedClassesOutOfMyPackage 
	 
	self 
		assert: 2
		equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope outOfMyPackage size. 
	self 
		assert: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope outOfMyPackage 
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide with: self c11FullRefereeOutSide )).
