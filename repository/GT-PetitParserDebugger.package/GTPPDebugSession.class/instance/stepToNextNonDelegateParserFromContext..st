debugging actions
stepToNextNonDelegateParserFromContext: aContext

	self 
		stepUntil: (self parseMethodEntryPredicate and: self notDelegateParserClassPredicate)
		from: aContext