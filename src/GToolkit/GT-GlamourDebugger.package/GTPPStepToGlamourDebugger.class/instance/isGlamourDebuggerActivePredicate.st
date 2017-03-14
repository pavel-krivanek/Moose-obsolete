testing
isGlamourDebuggerActivePredicate

	^ self session createPredicateForBlock: [ :aContext |
		(aContext receiver class inheritsFrom: GLMPresentation) and: [ aContext selector = #startOn: ]  ]