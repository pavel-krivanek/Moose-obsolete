actions
executeAction
	
	self session 
		stepOverInitialInstructionForContext: self startContext;
		stepToNextParserFromContext: self startContext