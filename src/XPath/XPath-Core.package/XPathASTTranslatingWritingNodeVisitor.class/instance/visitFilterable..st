visiting - location paths
visitFilterable: aFilterable
	aFilterable hasPredicates
		ifTrue: [
			self emitAll:
				(aFilterable isFilterExpression
					ifTrue: [' asXPathFilterExpressionPredicateRoot filterWithAll:{']
					ifFalse: [' predicates:{']).
			super visitFilterable: aFilterable.
			self emit: $}]
		ifFalse: [super visitFilterable: aFilterable].
	^ aFilterable.