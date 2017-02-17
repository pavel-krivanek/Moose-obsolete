*GT-DebuggerExtensions
createStepPredicateForBlock: aBlock 

	^ self createStepPredicatForPredicate: (self createPredicatForBlock: aBlock)
			