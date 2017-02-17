sureOutgoingInvocations
testSureReferencedClasses 
	 
	self assert: 2
		equals: self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations atTypeScope size. 
	self assert: 
			(self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations atTypeScope 
		equalsTo: (Set 
					with: self c13FullRefereeInSideOutSide
					with: self c11FullRefereeOutSide ))