tests
testIncomingInvocationReification 
	 
	self model allInvocations 
		do: 
			[:each |  
			each candidates 
				do: 
					[:eachCandidate | self assert: (eachCandidate incomingInvocations includes: each)]]