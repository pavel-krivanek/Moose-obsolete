*GT-DebuggerExtensions
createStepPredicateForPredicate: aPredicate fromContext: targetContext

	^ (self createPredicateForBlock: [ :currentContext |
		(self isActive: targetContext) not or: [ currentContext isHaltContext ] ]) 
			or: aPredicate
	