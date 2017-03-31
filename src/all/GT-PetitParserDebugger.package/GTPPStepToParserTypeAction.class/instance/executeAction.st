actions
executeAction

	self session
		stepOverInitialInstructionForContext: self startContext;
		stepUntil: self sameParserTypePredicate from: self startContext.