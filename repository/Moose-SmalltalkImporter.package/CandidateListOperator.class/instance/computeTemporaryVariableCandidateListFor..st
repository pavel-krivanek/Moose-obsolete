running
computeTemporaryVariableCandidateListFor: anInvocation 
	 
	| aClass |
	aClass ~~ nil 
		ifTrue: 
			[| candidate | 
			candidate := aClass implementationOf: anInvocation signature. 
			(candidate ~~ nil and: [candidate isAbstract not]) 
				ifTrue: [anInvocation candidates: (Array with: candidate)]]