visiting - location paths
visitFilterable: aFilterable
	aFilterable hasPredicates
		ifTrue: [
			aFilterable isFilterExpression
				ifTrue: [self emitAll: ' asXPathFilterable filterWithAll: {']
				ifFalse: [self emitAll: ' predicates: {'].
			super visitFilterable: aFilterable.
			self emit: $}]
		ifFalse: [super visitFilterable: aFilterable].
	^ aFilterable.