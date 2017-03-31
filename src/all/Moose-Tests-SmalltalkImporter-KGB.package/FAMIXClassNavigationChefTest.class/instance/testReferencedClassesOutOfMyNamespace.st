allOutgoingInvocations
testReferencedClassesOutOfMyNamespace 
	 
	self 
		assert: 1
		equals: 	self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope outOfMyNamespace size. 
	self 
		assert: 
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope outOfMyNamespace 
				equalsTo: 
					((Set new) 
						add: self c11FullRefereeOutSide; 
						yourself)).
