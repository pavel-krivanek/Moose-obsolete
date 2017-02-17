running
computeCandidateListFor: anInvocation withReceivingClass: aClass 
	 
	| candidate candidates | 
	aClass ~~ nil 
		ifTrue: 
			[candidates := self allCandidatesFor: anInvocation. 
			candidates := candidates 
				select: [:each | each belongsTo inheritsFrom: aClass]. 
			candidate := aClass implementationOf: anInvocation signature. 
			(candidate ~~ nil and: [candidate isAbstract not]) 
				ifTrue: [candidates := candidates copyWith: candidate]. 
			anInvocation candidates: candidates]