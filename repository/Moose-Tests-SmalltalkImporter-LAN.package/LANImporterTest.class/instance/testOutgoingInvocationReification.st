tests
testOutgoingInvocationReification 
	 
	self model allInvocations 
		do: 
			[:each | self assert: (each sender outgoingInvocations includes: each)]