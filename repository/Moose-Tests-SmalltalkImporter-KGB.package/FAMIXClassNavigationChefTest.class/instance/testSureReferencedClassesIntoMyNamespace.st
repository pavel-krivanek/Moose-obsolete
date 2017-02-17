sureOutgoingInvocations
testSureReferencedClassesIntoMyNamespace 
	 
	self assert: 1
		equals: 	self c16FullReferencerOutSideInSide querySureOutgoingInvocations atTypeScope withinMyNamespace size. 
	self assert: 
			(self c16FullReferencerOutSideInSide querySureOutgoingInvocations atTypeScope withinMyNamespace 
		equalsTo: (Set 
					with: self c18FullRefereeInSideOutSide 
					with: self c18FullRefereeInSideOutSide ))