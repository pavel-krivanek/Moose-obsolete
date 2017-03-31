actions
executeAction

	self session
		stepUntil: (self session 
			createStepPredicateForPredicate: self isGlamourDebuggerActivePredicate 
			fromContext: self currentContext ) 
		from: self currentContext.
		
	(self isGlamourDebuggerActivePredicate matches: self interruptedContext) ifTrue: [ 
		self debugger debug: self interruptedContext using: self debuggerClass ]
