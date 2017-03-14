enumerating - predicate axis
selfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		selfAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection