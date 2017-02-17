actions
executeAction	

	self session 
		stepOverInitialInstructionForContext: self startContext;
		stepToNextNonDelegateParserFromContext: self startContext
