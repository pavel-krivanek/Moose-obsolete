enumerating - predicate axis
descendantAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		descendantAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection