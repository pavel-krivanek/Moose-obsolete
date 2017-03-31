tests
testCorrectInvocations 
	 
	self model allInvocations 
		do: 
			[:each |  
			self assert: each sender isMethod. 
			each candidates 
				do: 
					[:eachCandidate | eachCandidate isNil ifFalse: [self assert: eachCandidate isMethod]]]