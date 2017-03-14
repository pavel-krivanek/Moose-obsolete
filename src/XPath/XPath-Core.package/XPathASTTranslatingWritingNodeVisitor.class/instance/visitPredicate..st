visiting - predicates
visitPredicate: aPredicate
	"number predicates like [1] can be inlined without outputting a
	predicate block"
	aPredicate expression isNumberLiteral
		ifTrue: [super visitPredicate: aPredicate]
		ifFalse: [| oldContextBlockVariables |
			oldContextBlockVariables := contextBlockVariables.
			self
				generateNewContextBlockVariables;
				emitStartPredicateBlock.
			super visitPredicate: aPredicate.
			self emitEndBlock.
			contextBlockVariables := oldContextBlockVariables].
	self emitPredicateSeparator.
	^ aPredicate.