actions
executeAction

	self session
		stepOverInitialInstructionForContext: self startContext;
		stepUntil: self sameParserPredicate from: self startContext.