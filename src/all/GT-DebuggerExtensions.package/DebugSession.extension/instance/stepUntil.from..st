*GT-DebuggerExtensions
stepUntil: aPredicate from: aContext 
	| ctxt |
	
	ctxt := self process stepUntil: (self createStepPredicateForPredicate: aPredicate) from: aContext.
	self  
		updateWithContext: ctxt 
		fromProcess: self process.