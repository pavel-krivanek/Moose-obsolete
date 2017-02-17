*famix-extensions-Testing
isInvokedBy: anInvocation 
	 
	^(anInvocation candidateList notNil 
		and: [anInvocation candidateList notEmpty]) 
		ifTrue: 
			[anInvocation candidateList 
				anySatisfy: 
					[:mtd | mtd class name = #FAMIXMethod and: [mtd belongsTo == self]]] 
		ifFalse: [false]