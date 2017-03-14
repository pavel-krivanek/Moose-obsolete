testing
isPPDebuggerActivePredicate

	^ self session createPredicateForBlock: [ :aContext |
		aContext isPPParseMethodContext ]