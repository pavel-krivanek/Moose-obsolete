tests
testInvocationReification
	self model allInvocations
		do: [ :each | 
			self assert: (each sender isKindOf: FAMIXMethod).
			each candidates
				do: [ :eachCandidate | 
					self assert: (eachCandidate isKindOf: FAMIXMethod).
					self assert: eachCandidate signature equals: each signature ] ]