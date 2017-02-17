enumerating - predicate axis
descendantOrSelfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		descendantOrSelfAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection