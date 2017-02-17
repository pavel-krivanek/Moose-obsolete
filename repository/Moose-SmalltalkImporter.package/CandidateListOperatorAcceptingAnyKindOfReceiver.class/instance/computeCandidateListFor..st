running
computeCandidateListFor: anInvocation 
	| receiver | 
	receiver := anInvocation receiver. 
	receiver ~~ nil 
		ifTrue: 
			[(receiver isImplicitVariable and: [receiver isSuper]) 
				ifTrue: 
					[^self 
						computeCandidateListFor: anInvocation 
						withBaseClass: receiver belongsTo belongsTo superclass]. 
			(receiver isImplicitVariable and: [receiver isSelf]) 
				ifTrue: 
					[^self 
						computeCandidateListFor: anInvocation 
						withReceivingClass: receiver belongsTo belongsTo]. 
			receiver isClass 
				ifTrue: 
					[^self computeCandidateListFor: anInvocation withBaseClass: receiver].
				
			(receiver class = FAMIXAttribute and: [receiver isSharedVariable not])
				ifTrue:
					["Transcript show: receiver belongsTo name, '-->', receiver name, '  - roelTyperResult :- ',"(self computeInstanceVariableCandidateListFor: anInvocation ) "asString, '//////      '"].
			
		"not working yet :"	
		"	receiver class = FAMIXLocalVariable  
				ifTrue:
					[Transcript show: receiver belongsTo name, '-->', receiver name, '  - roelTyperResult :- ',(self computeTemporaryVariableCandidateListFor: anInvocation ) asString, '//////      ']."
			
		
			]. 
			anInvocation candidates: (self allCandidatesFor: anInvocation)