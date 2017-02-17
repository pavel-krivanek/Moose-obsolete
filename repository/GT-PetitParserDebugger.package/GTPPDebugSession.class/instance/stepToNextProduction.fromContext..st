debugging actions
stepToNextProduction: aProduction fromContext: aContext
	
	self 
		stepUntil: (self parseMethodEntryPredicate and: (self namedProductionPredicate: aProduction)) 
		from: aContext