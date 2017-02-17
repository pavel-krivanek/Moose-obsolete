running
allCandidatesFor: invocation 
	 
	^Array 
		withAll: 
			(groups 
				at: invocation signature 
				ifAbsent: #())