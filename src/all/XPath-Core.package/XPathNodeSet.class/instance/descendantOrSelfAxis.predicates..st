private
descendantOrSelfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		descendantOrSelfAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection