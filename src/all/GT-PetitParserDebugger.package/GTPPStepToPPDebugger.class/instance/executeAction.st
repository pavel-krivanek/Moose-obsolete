actions
executeAction

	self session
		stepUntil: (self session 
			createStepPredicateForPredicate: self isPPDebuggerActivePredicate 
			fromContext: self currentContext ) 
		from: self currentContext.
		
	(self isPPDebuggerActivePredicate matches: self interruptedContext) ifTrue: [ 
		self debugger debug: self interruptedContext using: self debuggerClass ]
