allOutgoingInvocations
testAllOutgoingInvocationsOutOfMyNamespace 

	self 
		assert: 3
		equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations outOfMyNamespace size. 

	self assert: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations outOfMyNamespace atTypeScope
		equalsTo: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope outOfMyNamespace)). 
