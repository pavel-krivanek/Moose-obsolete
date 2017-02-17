running
basicRun 
	 
	model allInvocations 
		do: 
			[:invocation |  
			self computeCandidateListFor: invocation. 
			"self reifyIncomingInvocationsFor: invocation. "
			self increment]