sureIncomingInvocations
testSureReferencingClasses 
	| c13InstCreation | 
	c13InstCreation := self getMethod: 'm2p6c13InstCreation()' from: self c13FullRefereeInSideOutSide. 
	
	self assert: 3
		equals: c13InstCreation querySureIncomingInvocations atTypeScope size.
	self assert: 
			(c13InstCreation querySureIncomingInvocations atTypeScope 
				equalsTo: 
					(Set with: self c1FullReferencerOutSide
						with: self c12FullReferencerInSide 
						with: self c14ReferencerOutSideRefereeOutSide ))
		description: 'Unexpected query result'