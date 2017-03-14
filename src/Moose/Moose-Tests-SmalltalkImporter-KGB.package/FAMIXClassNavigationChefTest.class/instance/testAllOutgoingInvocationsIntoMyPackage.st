allOutgoingInvocations
testAllOutgoingInvocationsIntoMyPackage 
	
	self 
		assert: 1
		equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations withinMyPackage size. 

	self 
		assert: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations withinMyPackage atTypeScope
		equalsTo: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope withinMyPackage )). 
