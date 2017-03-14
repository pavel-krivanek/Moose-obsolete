debugging actions
stepUntil: aPredicate from: aContext 
	
	self process stepUntil: (self createStepPredicateForPredicate: aPredicate) from: aContext.
	self  
		updateWithContext: (self stepToFirstInterestingBytecodeIn: self process) 
		fromProcess: self process.