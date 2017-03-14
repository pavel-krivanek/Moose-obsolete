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
						withBaseClass: receiver belongsTo parentType superclass]. 
			(receiver isImplicitVariable and: [receiver isSelf]) 
				ifTrue: 
					[^self 
						computeCandidateListFor: anInvocation 
						withReceivingClass: receiver belongsTo parentType]. 
			receiver isClass 
				ifTrue: 
					[^self computeCandidateListFor: anInvocation withBaseClass: receiver].
			]. 
	anInvocation candidates: (self allCandidatesFor: anInvocation)