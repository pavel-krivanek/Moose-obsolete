debugging actions
stepOverInitialInstructionForContext: aContext
	
	(self isActive and: [
		self parseMethodEntryPredicate matches: aContext ])  
			ifTrue: [ self stepInto ]
	