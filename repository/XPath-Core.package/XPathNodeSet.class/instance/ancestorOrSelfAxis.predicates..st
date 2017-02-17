enumerating - predicate axis
ancestorOrSelfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		ancestorOrSelfAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection